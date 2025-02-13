; ModuleID = 'keywords.c'
source_filename = "keywords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }

@PL_curcop = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"say\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"elseif should be elsif\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"__SUB__\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"evalbytes\00", align 1
@switch.table.Perl_keyword = private unnamed_addr constant [8 x i32] [i32 154, i32 155, i32 0, i32 0, i32 0, i32 0, i32 157, i32 158], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_keyword(ptr noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  switch i32 %1, label %3939 [
    i32 1, label %4
    i32 2, label %10
    i32 3, label %80
    i32 4, label %280
    i32 5, label %648
    i32 6, label %1187
    i32 7, label %1697
    i32 8, label %2313
    i32 9, label %2828
    i32 10, label %3157
    i32 11, label %3405
    i32 12, label %3655
    i32 13, label %3713
    i32 14, label %3821
    i32 16, label %3876
  ]

4:                                                ; preds = %3
  %5 = load i8, ptr %0, align 1, !tbaa !5
  switch i8 %5, label %3939 [
    i8 109, label %3947
    i8 113, label %6
    i8 115, label %7
    i8 120, label %8
    i8 121, label %9
  ]

6:                                                ; preds = %4
  br label %3947

7:                                                ; preds = %4
  br label %3947

8:                                                ; preds = %4
  br label %3947

9:                                                ; preds = %4
  br label %3947

10:                                               ; preds = %3
  %11 = load i8, ptr %0, align 1, !tbaa !5
  switch i8 %11, label %3939 [
    i8 100, label %12
    i8 101, label %16
    i8 102, label %20
    i8 103, label %36
    i8 105, label %43
    i8 108, label %47
    i8 109, label %52
    i8 110, label %56
    i8 111, label %63
    i8 113, label %67
    i8 116, label %72
    i8 117, label %76
  ]

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, ptr %0, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 111
  br i1 %15, label %3947, label %3939

16:                                               ; preds = %10
  %17 = getelementptr inbounds i8, ptr %0, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !5
  %19 = icmp eq i8 %18, 113
  br i1 %19, label %3947, label %3939

20:                                               ; preds = %10
  %21 = getelementptr inbounds i8, ptr %0, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !5
  %23 = icmp eq i8 %22, 99
  br i1 %23, label %24, label %3939

24:                                               ; preds = %20
  br i1 %2, label %3947, label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr @PL_curcop, align 8, !tbaa !8
  %27 = getelementptr %struct.cop, ptr %26, i64 0, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !10
  %29 = and i32 %28, 469762048
  switch i32 %29, label %3940 [
    i32 201326592, label %3947
    i32 469762048, label %30
  ]

30:                                               ; preds = %25
  %31 = and i32 %28, 131072
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %3947, label %33

33:                                               ; preds = %30
  %34 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str, i64 noundef 2) #2
  %35 = select i1 %34, i32 -63, i32 0
  br label %3947

36:                                               ; preds = %10
  %37 = getelementptr inbounds i8, ptr %0, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = icmp eq i8 %38, 116
  %40 = select i1 %39, i32 -104, i32 0
  %41 = icmp eq i8 %38, 101
  %42 = select i1 %41, i32 -72, i32 %40
  br label %3947

43:                                               ; preds = %10
  %44 = getelementptr inbounds i8, ptr %0, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !5
  %46 = icmp eq i8 %45, 102
  br i1 %46, label %3947, label %3939

47:                                               ; preds = %10
  %48 = getelementptr inbounds i8, ptr %0, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !5
  switch i8 %49, label %3939 [
    i8 99, label %3947
    i8 101, label %50
    i8 116, label %51
  ]

50:                                               ; preds = %47
  br label %3947

51:                                               ; preds = %47
  br label %3947

52:                                               ; preds = %10
  %53 = getelementptr inbounds i8, ptr %0, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !5
  %55 = icmp eq i8 %54, 121
  br i1 %55, label %3947, label %3939

56:                                               ; preds = %10
  %57 = getelementptr inbounds i8, ptr %0, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !5
  %59 = icmp eq i8 %58, 111
  %60 = select i1 %59, i32 136, i32 0
  %61 = icmp eq i8 %58, 101
  %62 = select i1 %61, i32 -134, i32 %60
  br label %3947

63:                                               ; preds = %10
  %64 = getelementptr inbounds i8, ptr %0, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !5
  %66 = icmp eq i8 %65, 114
  br i1 %66, label %3947, label %3939

67:                                               ; preds = %10
  %68 = getelementptr inbounds i8, ptr %0, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !5
  %70 = add i8 %69, -113
  %71 = icmp ult i8 %70, 8
  br i1 %71, label %3943, label %3939

72:                                               ; preds = %10
  %73 = getelementptr inbounds i8, ptr %0, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !5
  %75 = icmp eq i8 %74, 114
  br i1 %75, label %3947, label %3939

76:                                               ; preds = %10
  %77 = getelementptr inbounds i8, ptr %0, i64 1
  %78 = load i8, ptr %77, align 1, !tbaa !5
  %79 = icmp eq i8 %78, 99
  br i1 %79, label %3947, label %3939

80:                                               ; preds = %3
  %81 = load i8, ptr %0, align 1, !tbaa !5
  switch i8 %81, label %3939 [
    i8 69, label %82
    i8 97, label %90
    i8 99, label %101
    i8 100, label %116
    i8 101, label %124
    i8 102, label %135
    i8 104, label %143
    i8 105, label %151
    i8 108, label %159
    i8 109, label %167
    i8 110, label %175
    i8 111, label %183
    i8 112, label %198
    i8 114, label %209
    i8 115, label %217
    i8 116, label %248
    i8 117, label %256
    i8 118, label %264
    i8 120, label %272
  ]

82:                                               ; preds = %80
  %83 = getelementptr inbounds i8, ptr %0, i64 1
  %84 = load i8, ptr %83, align 1, !tbaa !5
  %85 = icmp eq i8 %84, 78
  br i1 %85, label %86, label %3939

86:                                               ; preds = %82
  %87 = getelementptr inbounds i8, ptr %0, i64 2
  %88 = load i8, ptr %87, align 1, !tbaa !5
  %89 = icmp eq i8 %88, 68
  br i1 %89, label %3947, label %3939

90:                                               ; preds = %80
  %91 = getelementptr inbounds i8, ptr %0, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !5
  switch i8 %92, label %3939 [
    i8 98, label %93
    i8 110, label %97
  ]

93:                                               ; preds = %90
  %94 = getelementptr inbounds i8, ptr %0, i64 2
  %95 = load i8, ptr %94, align 1, !tbaa !5
  %96 = icmp eq i8 %95, 115
  br i1 %96, label %3947, label %3939

97:                                               ; preds = %90
  %98 = getelementptr inbounds i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1, !tbaa !5
  %100 = icmp eq i8 %99, 100
  br i1 %100, label %3947, label %3939

101:                                              ; preds = %80
  %102 = getelementptr inbounds i8, ptr %0, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !5
  switch i8 %103, label %3939 [
    i8 104, label %104
    i8 109, label %108
    i8 111, label %112
  ]

104:                                              ; preds = %101
  %105 = getelementptr inbounds i8, ptr %0, i64 2
  %106 = load i8, ptr %105, align 1, !tbaa !5
  %107 = icmp eq i8 %106, 114
  br i1 %107, label %3947, label %3939

108:                                              ; preds = %101
  %109 = getelementptr inbounds i8, ptr %0, i64 2
  %110 = load i8, ptr %109, align 1, !tbaa !5
  %111 = icmp eq i8 %110, 112
  br i1 %111, label %3947, label %3939

112:                                              ; preds = %101
  %113 = getelementptr inbounds i8, ptr %0, i64 2
  %114 = load i8, ptr %113, align 1, !tbaa !5
  %115 = icmp eq i8 %114, 115
  br i1 %115, label %3947, label %3939

116:                                              ; preds = %80
  %117 = getelementptr inbounds i8, ptr %0, i64 1
  %118 = load i8, ptr %117, align 1, !tbaa !5
  %119 = icmp eq i8 %118, 105
  br i1 %119, label %120, label %3939

120:                                              ; preds = %116
  %121 = getelementptr inbounds i8, ptr %0, i64 2
  %122 = load i8, ptr %121, align 1, !tbaa !5
  %123 = icmp eq i8 %122, 101
  br i1 %123, label %3947, label %3939

124:                                              ; preds = %80
  %125 = getelementptr inbounds i8, ptr %0, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !5
  switch i8 %126, label %3939 [
    i8 111, label %127
    i8 120, label %131
  ]

127:                                              ; preds = %124
  %128 = getelementptr inbounds i8, ptr %0, i64 2
  %129 = load i8, ptr %128, align 1, !tbaa !5
  %130 = icmp eq i8 %129, 102
  br i1 %130, label %3947, label %3939

131:                                              ; preds = %124
  %132 = getelementptr inbounds i8, ptr %0, i64 2
  %133 = load i8, ptr %132, align 1, !tbaa !5
  %134 = icmp eq i8 %133, 112
  br i1 %134, label %3947, label %3939

135:                                              ; preds = %80
  %136 = getelementptr inbounds i8, ptr %0, i64 1
  %137 = load i8, ptr %136, align 1, !tbaa !5
  %138 = icmp eq i8 %137, 111
  br i1 %138, label %139, label %3939

139:                                              ; preds = %135
  %140 = getelementptr inbounds i8, ptr %0, i64 2
  %141 = load i8, ptr %140, align 1, !tbaa !5
  %142 = icmp eq i8 %141, 114
  br i1 %142, label %3947, label %3939

143:                                              ; preds = %80
  %144 = getelementptr inbounds i8, ptr %0, i64 1
  %145 = load i8, ptr %144, align 1, !tbaa !5
  %146 = icmp eq i8 %145, 101
  br i1 %146, label %147, label %3939

147:                                              ; preds = %143
  %148 = getelementptr inbounds i8, ptr %0, i64 2
  %149 = load i8, ptr %148, align 1, !tbaa !5
  %150 = icmp eq i8 %149, 120
  br i1 %150, label %3947, label %3939

151:                                              ; preds = %80
  %152 = getelementptr inbounds i8, ptr %0, i64 1
  %153 = load i8, ptr %152, align 1, !tbaa !5
  %154 = icmp eq i8 %153, 110
  br i1 %154, label %155, label %3939

155:                                              ; preds = %151
  %156 = getelementptr inbounds i8, ptr %0, i64 2
  %157 = load i8, ptr %156, align 1, !tbaa !5
  %158 = icmp eq i8 %157, 116
  br i1 %158, label %3947, label %3939

159:                                              ; preds = %80
  %160 = getelementptr inbounds i8, ptr %0, i64 1
  %161 = load i8, ptr %160, align 1, !tbaa !5
  %162 = icmp eq i8 %161, 111
  br i1 %162, label %163, label %3939

163:                                              ; preds = %159
  %164 = getelementptr inbounds i8, ptr %0, i64 2
  %165 = load i8, ptr %164, align 1, !tbaa !5
  %166 = icmp eq i8 %165, 103
  br i1 %166, label %3947, label %3939

167:                                              ; preds = %80
  %168 = getelementptr inbounds i8, ptr %0, i64 1
  %169 = load i8, ptr %168, align 1, !tbaa !5
  %170 = icmp eq i8 %169, 97
  br i1 %170, label %171, label %3939

171:                                              ; preds = %167
  %172 = getelementptr inbounds i8, ptr %0, i64 2
  %173 = load i8, ptr %172, align 1, !tbaa !5
  %174 = icmp eq i8 %173, 112
  br i1 %174, label %3947, label %3939

175:                                              ; preds = %80
  %176 = getelementptr inbounds i8, ptr %0, i64 1
  %177 = load i8, ptr %176, align 1, !tbaa !5
  %178 = icmp eq i8 %177, 111
  br i1 %178, label %179, label %3939

179:                                              ; preds = %175
  %180 = getelementptr inbounds i8, ptr %0, i64 2
  %181 = load i8, ptr %180, align 1, !tbaa !5
  %182 = icmp eq i8 %181, 116
  br i1 %182, label %3947, label %3939

183:                                              ; preds = %80
  %184 = getelementptr inbounds i8, ptr %0, i64 1
  %185 = load i8, ptr %184, align 1, !tbaa !5
  switch i8 %185, label %3939 [
    i8 99, label %186
    i8 114, label %190
    i8 117, label %194
  ]

186:                                              ; preds = %183
  %187 = getelementptr inbounds i8, ptr %0, i64 2
  %188 = load i8, ptr %187, align 1, !tbaa !5
  %189 = icmp eq i8 %188, 116
  br i1 %189, label %3947, label %3939

190:                                              ; preds = %183
  %191 = getelementptr inbounds i8, ptr %0, i64 2
  %192 = load i8, ptr %191, align 1, !tbaa !5
  %193 = icmp eq i8 %192, 100
  br i1 %193, label %3947, label %3939

194:                                              ; preds = %183
  %195 = getelementptr inbounds i8, ptr %0, i64 2
  %196 = load i8, ptr %195, align 1, !tbaa !5
  %197 = icmp eq i8 %196, 114
  br i1 %197, label %3947, label %3939

198:                                              ; preds = %80
  %199 = getelementptr inbounds i8, ptr %0, i64 1
  %200 = load i8, ptr %199, align 1, !tbaa !5
  %201 = icmp eq i8 %200, 111
  br i1 %201, label %202, label %3939

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 2
  %204 = load i8, ptr %203, align 1, !tbaa !5
  %205 = icmp eq i8 %204, 115
  %206 = select i1 %205, i32 148, i32 0
  %207 = icmp eq i8 %204, 112
  %208 = select i1 %207, i32 -147, i32 %206
  br label %3947

209:                                              ; preds = %80
  %210 = getelementptr inbounds i8, ptr %0, i64 1
  %211 = load i8, ptr %210, align 1, !tbaa !5
  %212 = icmp eq i8 %211, 101
  br i1 %212, label %213, label %3939

213:                                              ; preds = %209
  %214 = getelementptr inbounds i8, ptr %0, i64 2
  %215 = load i8, ptr %214, align 1, !tbaa !5
  %216 = icmp eq i8 %215, 102
  br i1 %216, label %3947, label %3939

217:                                              ; preds = %80
  %218 = getelementptr inbounds i8, ptr %0, i64 1
  %219 = load i8, ptr %218, align 1, !tbaa !5
  switch i8 %219, label %3939 [
    i8 97, label %220
    i8 105, label %240
    i8 117, label %244
  ]

220:                                              ; preds = %217
  %221 = getelementptr inbounds i8, ptr %0, i64 2
  %222 = load i8, ptr %221, align 1, !tbaa !5
  %223 = icmp eq i8 %222, 121
  br i1 %223, label %224, label %3939

224:                                              ; preds = %220
  br i1 %2, label %3947, label %225

225:                                              ; preds = %224
  %226 = load ptr, ptr @PL_curcop, align 8, !tbaa !8
  %227 = getelementptr %struct.cop, ptr %226, i64 0, i32 10
  %228 = load i32, ptr %227, align 8, !tbaa !10
  %229 = and i32 %228, 469762048
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %3947, label %231

231:                                              ; preds = %225
  %232 = and i32 %228, 268435456
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %3947, label %234

234:                                              ; preds = %231
  %235 = and i32 %228, 469893120
  %236 = icmp eq i32 %235, 469893120
  br i1 %236, label %237, label %3947

237:                                              ; preds = %234
  %238 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.1, i64 noundef 3) #2
  %239 = select i1 %238, i32 177, i32 0
  br label %3947

240:                                              ; preds = %217
  %241 = getelementptr inbounds i8, ptr %0, i64 2
  %242 = load i8, ptr %241, align 1, !tbaa !5
  %243 = icmp eq i8 %242, 110
  br i1 %243, label %3947, label %3939

244:                                              ; preds = %217
  %245 = getelementptr inbounds i8, ptr %0, i64 2
  %246 = load i8, ptr %245, align 1, !tbaa !5
  %247 = icmp eq i8 %246, 98
  br i1 %247, label %3947, label %3939

248:                                              ; preds = %80
  %249 = getelementptr inbounds i8, ptr %0, i64 1
  %250 = load i8, ptr %249, align 1, !tbaa !5
  %251 = icmp eq i8 %250, 105
  br i1 %251, label %252, label %3939

252:                                              ; preds = %248
  %253 = getelementptr inbounds i8, ptr %0, i64 2
  %254 = load i8, ptr %253, align 1, !tbaa !5
  %255 = icmp eq i8 %254, 101
  br i1 %255, label %3947, label %3939

256:                                              ; preds = %80
  %257 = getelementptr inbounds i8, ptr %0, i64 1
  %258 = load i8, ptr %257, align 1, !tbaa !5
  %259 = icmp eq i8 %258, 115
  br i1 %259, label %260, label %3939

260:                                              ; preds = %256
  %261 = getelementptr inbounds i8, ptr %0, i64 2
  %262 = load i8, ptr %261, align 1, !tbaa !5
  %263 = icmp eq i8 %262, 101
  br i1 %263, label %3947, label %3939

264:                                              ; preds = %80
  %265 = getelementptr inbounds i8, ptr %0, i64 1
  %266 = load i8, ptr %265, align 1, !tbaa !5
  %267 = icmp eq i8 %266, 101
  br i1 %267, label %268, label %3939

268:                                              ; preds = %264
  %269 = getelementptr inbounds i8, ptr %0, i64 2
  %270 = load i8, ptr %269, align 1, !tbaa !5
  %271 = icmp eq i8 %270, 99
  br i1 %271, label %3947, label %3939

272:                                              ; preds = %80
  %273 = getelementptr inbounds i8, ptr %0, i64 1
  %274 = load i8, ptr %273, align 1, !tbaa !5
  %275 = icmp eq i8 %274, 111
  br i1 %275, label %276, label %3939

276:                                              ; preds = %272
  %277 = getelementptr inbounds i8, ptr %0, i64 2
  %278 = load i8, ptr %277, align 1, !tbaa !5
  %279 = icmp eq i8 %278, 114
  br i1 %279, label %3947, label %3939

280:                                              ; preds = %3
  %281 = load i8, ptr %0, align 1, !tbaa !5
  switch i8 %281, label %3939 [
    i8 73, label %282
    i8 98, label %294
    i8 99, label %306
    i8 100, label %318
    i8 101, label %330
    i8 102, label %368
    i8 103, label %380
    i8 106, label %415
    i8 107, label %427
    i8 108, label %446
    i8 110, label %473
    i8 111, label %485
    i8 112, label %497
    i8 114, label %524
    i8 115, label %550
    i8 116, label %588
    i8 119, label %610
  ]

282:                                              ; preds = %280
  %283 = getelementptr inbounds i8, ptr %0, i64 1
  %284 = load i8, ptr %283, align 1, !tbaa !5
  %285 = icmp eq i8 %284, 78
  br i1 %285, label %286, label %3939

286:                                              ; preds = %282
  %287 = getelementptr inbounds i8, ptr %0, i64 2
  %288 = load i8, ptr %287, align 1, !tbaa !5
  %289 = icmp eq i8 %288, 73
  br i1 %289, label %290, label %3939

290:                                              ; preds = %286
  %291 = getelementptr inbounds i8, ptr %0, i64 3
  %292 = load i8, ptr %291, align 1, !tbaa !5
  %293 = icmp eq i8 %292, 84
  br i1 %293, label %3947, label %3939

294:                                              ; preds = %280
  %295 = getelementptr inbounds i8, ptr %0, i64 1
  %296 = load i8, ptr %295, align 1, !tbaa !5
  %297 = icmp eq i8 %296, 105
  br i1 %297, label %298, label %3939

298:                                              ; preds = %294
  %299 = getelementptr inbounds i8, ptr %0, i64 2
  %300 = load i8, ptr %299, align 1, !tbaa !5
  %301 = icmp eq i8 %300, 110
  br i1 %301, label %302, label %3939

302:                                              ; preds = %298
  %303 = getelementptr inbounds i8, ptr %0, i64 3
  %304 = load i8, ptr %303, align 1, !tbaa !5
  %305 = icmp eq i8 %304, 100
  br i1 %305, label %3947, label %3939

306:                                              ; preds = %280
  %307 = getelementptr inbounds i8, ptr %0, i64 1
  %308 = load i8, ptr %307, align 1, !tbaa !5
  %309 = icmp eq i8 %308, 104
  br i1 %309, label %310, label %3939

310:                                              ; preds = %306
  %311 = getelementptr inbounds i8, ptr %0, i64 2
  %312 = load i8, ptr %311, align 1, !tbaa !5
  %313 = icmp eq i8 %312, 111
  br i1 %313, label %314, label %3939

314:                                              ; preds = %310
  %315 = getelementptr inbounds i8, ptr %0, i64 3
  %316 = load i8, ptr %315, align 1, !tbaa !5
  %317 = icmp eq i8 %316, 112
  br i1 %317, label %3947, label %3939

318:                                              ; preds = %280
  %319 = getelementptr inbounds i8, ptr %0, i64 1
  %320 = load i8, ptr %319, align 1, !tbaa !5
  %321 = icmp eq i8 %320, 117
  br i1 %321, label %322, label %3939

322:                                              ; preds = %318
  %323 = getelementptr inbounds i8, ptr %0, i64 2
  %324 = load i8, ptr %323, align 1, !tbaa !5
  %325 = icmp eq i8 %324, 109
  br i1 %325, label %326, label %3939

326:                                              ; preds = %322
  %327 = getelementptr inbounds i8, ptr %0, i64 3
  %328 = load i8, ptr %327, align 1, !tbaa !5
  %329 = icmp eq i8 %328, 112
  br i1 %329, label %3947, label %3939

330:                                              ; preds = %280
  %331 = getelementptr inbounds i8, ptr %0, i64 1
  %332 = load i8, ptr %331, align 1, !tbaa !5
  switch i8 %332, label %3939 [
    i8 97, label %333
    i8 108, label %341
    i8 118, label %349
    i8 120, label %357
  ]

333:                                              ; preds = %330
  %334 = getelementptr inbounds i8, ptr %0, i64 2
  %335 = load i8, ptr %334, align 1, !tbaa !5
  %336 = icmp eq i8 %335, 99
  br i1 %336, label %337, label %3939

337:                                              ; preds = %333
  %338 = getelementptr inbounds i8, ptr %0, i64 3
  %339 = load i8, ptr %338, align 1, !tbaa !5
  %340 = icmp eq i8 %339, 104
  br i1 %340, label %3947, label %3939

341:                                              ; preds = %330
  %342 = getelementptr inbounds i8, ptr %0, i64 2
  %343 = load i8, ptr %342, align 1, !tbaa !5
  %344 = icmp eq i8 %343, 115
  br i1 %344, label %345, label %3939

345:                                              ; preds = %341
  %346 = getelementptr inbounds i8, ptr %0, i64 3
  %347 = load i8, ptr %346, align 1, !tbaa !5
  %348 = icmp eq i8 %347, 101
  br i1 %348, label %3947, label %3939

349:                                              ; preds = %330
  %350 = getelementptr inbounds i8, ptr %0, i64 2
  %351 = load i8, ptr %350, align 1, !tbaa !5
  %352 = icmp eq i8 %351, 97
  br i1 %352, label %353, label %3939

353:                                              ; preds = %349
  %354 = getelementptr inbounds i8, ptr %0, i64 3
  %355 = load i8, ptr %354, align 1, !tbaa !5
  %356 = icmp eq i8 %355, 108
  br i1 %356, label %3947, label %3939

357:                                              ; preds = %330
  %358 = getelementptr inbounds i8, ptr %0, i64 2
  %359 = load i8, ptr %358, align 1, !tbaa !5
  switch i8 %359, label %3939 [
    i8 101, label %360
    i8 105, label %364
  ]

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 3
  %362 = load i8, ptr %361, align 1, !tbaa !5
  %363 = icmp eq i8 %362, 99
  br i1 %363, label %3947, label %3939

364:                                              ; preds = %357
  %365 = getelementptr inbounds i8, ptr %0, i64 3
  %366 = load i8, ptr %365, align 1, !tbaa !5
  %367 = icmp eq i8 %366, 116
  br i1 %367, label %3947, label %3939

368:                                              ; preds = %280
  %369 = getelementptr inbounds i8, ptr %0, i64 1
  %370 = load i8, ptr %369, align 1, !tbaa !5
  %371 = icmp eq i8 %370, 111
  br i1 %371, label %372, label %3939

372:                                              ; preds = %368
  %373 = getelementptr inbounds i8, ptr %0, i64 2
  %374 = load i8, ptr %373, align 1, !tbaa !5
  %375 = icmp eq i8 %374, 114
  br i1 %375, label %376, label %3939

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 3
  %378 = load i8, ptr %377, align 1, !tbaa !5
  %379 = icmp eq i8 %378, 107
  br i1 %379, label %3947, label %3939

380:                                              ; preds = %280
  %381 = getelementptr inbounds i8, ptr %0, i64 1
  %382 = load i8, ptr %381, align 1, !tbaa !5
  switch i8 %382, label %3939 [
    i8 101, label %383
    i8 108, label %391
    i8 111, label %399
    i8 114, label %407
  ]

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 2
  %385 = load i8, ptr %384, align 1, !tbaa !5
  %386 = icmp eq i8 %385, 116
  br i1 %386, label %387, label %3939

387:                                              ; preds = %383
  %388 = getelementptr inbounds i8, ptr %0, i64 3
  %389 = load i8, ptr %388, align 1, !tbaa !5
  %390 = icmp eq i8 %389, 99
  br i1 %390, label %3947, label %3939

391:                                              ; preds = %380
  %392 = getelementptr inbounds i8, ptr %0, i64 2
  %393 = load i8, ptr %392, align 1, !tbaa !5
  %394 = icmp eq i8 %393, 111
  br i1 %394, label %395, label %3939

395:                                              ; preds = %391
  %396 = getelementptr inbounds i8, ptr %0, i64 3
  %397 = load i8, ptr %396, align 1, !tbaa !5
  %398 = icmp eq i8 %397, 98
  br i1 %398, label %3947, label %3939

399:                                              ; preds = %380
  %400 = getelementptr inbounds i8, ptr %0, i64 2
  %401 = load i8, ptr %400, align 1, !tbaa !5
  %402 = icmp eq i8 %401, 116
  br i1 %402, label %403, label %3939

403:                                              ; preds = %399
  %404 = getelementptr inbounds i8, ptr %0, i64 3
  %405 = load i8, ptr %404, align 1, !tbaa !5
  %406 = icmp eq i8 %405, 111
  br i1 %406, label %3947, label %3939

407:                                              ; preds = %380
  %408 = getelementptr inbounds i8, ptr %0, i64 2
  %409 = load i8, ptr %408, align 1, !tbaa !5
  %410 = icmp eq i8 %409, 101
  br i1 %410, label %411, label %3939

411:                                              ; preds = %407
  %412 = getelementptr inbounds i8, ptr %0, i64 3
  %413 = load i8, ptr %412, align 1, !tbaa !5
  %414 = icmp eq i8 %413, 112
  br i1 %414, label %3947, label %3939

415:                                              ; preds = %280
  %416 = getelementptr inbounds i8, ptr %0, i64 1
  %417 = load i8, ptr %416, align 1, !tbaa !5
  %418 = icmp eq i8 %417, 111
  br i1 %418, label %419, label %3939

419:                                              ; preds = %415
  %420 = getelementptr inbounds i8, ptr %0, i64 2
  %421 = load i8, ptr %420, align 1, !tbaa !5
  %422 = icmp eq i8 %421, 105
  br i1 %422, label %423, label %3939

423:                                              ; preds = %419
  %424 = getelementptr inbounds i8, ptr %0, i64 3
  %425 = load i8, ptr %424, align 1, !tbaa !5
  %426 = icmp eq i8 %425, 110
  br i1 %426, label %3947, label %3939

427:                                              ; preds = %280
  %428 = getelementptr inbounds i8, ptr %0, i64 1
  %429 = load i8, ptr %428, align 1, !tbaa !5
  switch i8 %429, label %3939 [
    i8 101, label %430
    i8 105, label %438
  ]

430:                                              ; preds = %427
  %431 = getelementptr inbounds i8, ptr %0, i64 2
  %432 = load i8, ptr %431, align 1, !tbaa !5
  %433 = icmp eq i8 %432, 121
  br i1 %433, label %434, label %3939

434:                                              ; preds = %430
  %435 = getelementptr inbounds i8, ptr %0, i64 3
  %436 = load i8, ptr %435, align 1, !tbaa !5
  %437 = icmp eq i8 %436, 115
  br i1 %437, label %3947, label %3939

438:                                              ; preds = %427
  %439 = getelementptr inbounds i8, ptr %0, i64 2
  %440 = load i8, ptr %439, align 1, !tbaa !5
  %441 = icmp eq i8 %440, 108
  br i1 %441, label %442, label %3939

442:                                              ; preds = %438
  %443 = getelementptr inbounds i8, ptr %0, i64 3
  %444 = load i8, ptr %443, align 1, !tbaa !5
  %445 = icmp eq i8 %444, 108
  br i1 %445, label %3947, label %3939

446:                                              ; preds = %280
  %447 = getelementptr inbounds i8, ptr %0, i64 1
  %448 = load i8, ptr %447, align 1, !tbaa !5
  switch i8 %448, label %3939 [
    i8 97, label %449
    i8 105, label %457
    i8 111, label %465
  ]

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, ptr %0, i64 2
  %451 = load i8, ptr %450, align 1, !tbaa !5
  %452 = icmp eq i8 %451, 115
  br i1 %452, label %453, label %3939

453:                                              ; preds = %449
  %454 = getelementptr inbounds i8, ptr %0, i64 3
  %455 = load i8, ptr %454, align 1, !tbaa !5
  %456 = icmp eq i8 %455, 116
  br i1 %456, label %3947, label %3939

457:                                              ; preds = %446
  %458 = getelementptr inbounds i8, ptr %0, i64 2
  %459 = load i8, ptr %458, align 1, !tbaa !5
  %460 = icmp eq i8 %459, 110
  br i1 %460, label %461, label %3939

461:                                              ; preds = %457
  %462 = getelementptr inbounds i8, ptr %0, i64 3
  %463 = load i8, ptr %462, align 1, !tbaa !5
  %464 = icmp eq i8 %463, 107
  br i1 %464, label %3947, label %3939

465:                                              ; preds = %446
  %466 = getelementptr inbounds i8, ptr %0, i64 2
  %467 = load i8, ptr %466, align 1, !tbaa !5
  %468 = icmp eq i8 %467, 99
  br i1 %468, label %469, label %3939

469:                                              ; preds = %465
  %470 = getelementptr inbounds i8, ptr %0, i64 3
  %471 = load i8, ptr %470, align 1, !tbaa !5
  %472 = icmp eq i8 %471, 107
  br i1 %472, label %3947, label %3939

473:                                              ; preds = %280
  %474 = getelementptr inbounds i8, ptr %0, i64 1
  %475 = load i8, ptr %474, align 1, !tbaa !5
  %476 = icmp eq i8 %475, 101
  br i1 %476, label %477, label %3939

477:                                              ; preds = %473
  %478 = getelementptr inbounds i8, ptr %0, i64 2
  %479 = load i8, ptr %478, align 1, !tbaa !5
  %480 = icmp eq i8 %479, 120
  br i1 %480, label %481, label %3939

481:                                              ; preds = %477
  %482 = getelementptr inbounds i8, ptr %0, i64 3
  %483 = load i8, ptr %482, align 1, !tbaa !5
  %484 = icmp eq i8 %483, 116
  br i1 %484, label %3947, label %3939

485:                                              ; preds = %280
  %486 = getelementptr inbounds i8, ptr %0, i64 1
  %487 = load i8, ptr %486, align 1, !tbaa !5
  %488 = icmp eq i8 %487, 112
  br i1 %488, label %489, label %3939

489:                                              ; preds = %485
  %490 = getelementptr inbounds i8, ptr %0, i64 2
  %491 = load i8, ptr %490, align 1, !tbaa !5
  %492 = icmp eq i8 %491, 101
  br i1 %492, label %493, label %3939

493:                                              ; preds = %489
  %494 = getelementptr inbounds i8, ptr %0, i64 3
  %495 = load i8, ptr %494, align 1, !tbaa !5
  %496 = icmp eq i8 %495, 110
  br i1 %496, label %3947, label %3939

497:                                              ; preds = %280
  %498 = getelementptr inbounds i8, ptr %0, i64 1
  %499 = load i8, ptr %498, align 1, !tbaa !5
  switch i8 %499, label %3939 [
    i8 97, label %500
    i8 105, label %508
    i8 117, label %516
  ]

500:                                              ; preds = %497
  %501 = getelementptr inbounds i8, ptr %0, i64 2
  %502 = load i8, ptr %501, align 1, !tbaa !5
  %503 = icmp eq i8 %502, 99
  br i1 %503, label %504, label %3939

504:                                              ; preds = %500
  %505 = getelementptr inbounds i8, ptr %0, i64 3
  %506 = load i8, ptr %505, align 1, !tbaa !5
  %507 = icmp eq i8 %506, 107
  br i1 %507, label %3947, label %3939

508:                                              ; preds = %497
  %509 = getelementptr inbounds i8, ptr %0, i64 2
  %510 = load i8, ptr %509, align 1, !tbaa !5
  %511 = icmp eq i8 %510, 112
  br i1 %511, label %512, label %3939

512:                                              ; preds = %508
  %513 = getelementptr inbounds i8, ptr %0, i64 3
  %514 = load i8, ptr %513, align 1, !tbaa !5
  %515 = icmp eq i8 %514, 101
  br i1 %515, label %3947, label %3939

516:                                              ; preds = %497
  %517 = getelementptr inbounds i8, ptr %0, i64 2
  %518 = load i8, ptr %517, align 1, !tbaa !5
  %519 = icmp eq i8 %518, 115
  br i1 %519, label %520, label %3939

520:                                              ; preds = %516
  %521 = getelementptr inbounds i8, ptr %0, i64 3
  %522 = load i8, ptr %521, align 1, !tbaa !5
  %523 = icmp eq i8 %522, 104
  br i1 %523, label %3947, label %3939

524:                                              ; preds = %280
  %525 = getelementptr inbounds i8, ptr %0, i64 1
  %526 = load i8, ptr %525, align 1, !tbaa !5
  switch i8 %526, label %3939 [
    i8 97, label %527
    i8 101, label %535
  ]

527:                                              ; preds = %524
  %528 = getelementptr inbounds i8, ptr %0, i64 2
  %529 = load i8, ptr %528, align 1, !tbaa !5
  %530 = icmp eq i8 %529, 110
  br i1 %530, label %531, label %3939

531:                                              ; preds = %527
  %532 = getelementptr inbounds i8, ptr %0, i64 3
  %533 = load i8, ptr %532, align 1, !tbaa !5
  %534 = icmp eq i8 %533, 100
  br i1 %534, label %3947, label %3939

535:                                              ; preds = %524
  %536 = getelementptr inbounds i8, ptr %0, i64 2
  %537 = load i8, ptr %536, align 1, !tbaa !5
  switch i8 %537, label %3939 [
    i8 97, label %538
    i8 99, label %542
    i8 100, label %546
  ]

538:                                              ; preds = %535
  %539 = getelementptr inbounds i8, ptr %0, i64 3
  %540 = load i8, ptr %539, align 1, !tbaa !5
  %541 = icmp eq i8 %540, 100
  br i1 %541, label %3947, label %3939

542:                                              ; preds = %535
  %543 = getelementptr inbounds i8, ptr %0, i64 3
  %544 = load i8, ptr %543, align 1, !tbaa !5
  %545 = icmp eq i8 %544, 118
  br i1 %545, label %3947, label %3939

546:                                              ; preds = %535
  %547 = getelementptr inbounds i8, ptr %0, i64 3
  %548 = load i8, ptr %547, align 1, !tbaa !5
  %549 = icmp eq i8 %548, 111
  br i1 %549, label %3947, label %3939

550:                                              ; preds = %280
  %551 = getelementptr inbounds i8, ptr %0, i64 1
  %552 = load i8, ptr %551, align 1, !tbaa !5
  switch i8 %552, label %3939 [
    i8 101, label %553
    i8 111, label %564
    i8 113, label %572
    i8 116, label %580
  ]

553:                                              ; preds = %550
  %554 = getelementptr inbounds i8, ptr %0, i64 2
  %555 = load i8, ptr %554, align 1, !tbaa !5
  switch i8 %555, label %3939 [
    i8 101, label %556
    i8 110, label %560
  ]

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 3
  %558 = load i8, ptr %557, align 1, !tbaa !5
  %559 = icmp eq i8 %558, 107
  br i1 %559, label %3947, label %3939

560:                                              ; preds = %553
  %561 = getelementptr inbounds i8, ptr %0, i64 3
  %562 = load i8, ptr %561, align 1, !tbaa !5
  %563 = icmp eq i8 %562, 100
  br i1 %563, label %3947, label %3939

564:                                              ; preds = %550
  %565 = getelementptr inbounds i8, ptr %0, i64 2
  %566 = load i8, ptr %565, align 1, !tbaa !5
  %567 = icmp eq i8 %566, 114
  br i1 %567, label %568, label %3939

568:                                              ; preds = %564
  %569 = getelementptr inbounds i8, ptr %0, i64 3
  %570 = load i8, ptr %569, align 1, !tbaa !5
  %571 = icmp eq i8 %570, 116
  br i1 %571, label %3947, label %3939

572:                                              ; preds = %550
  %573 = getelementptr inbounds i8, ptr %0, i64 2
  %574 = load i8, ptr %573, align 1, !tbaa !5
  %575 = icmp eq i8 %574, 114
  br i1 %575, label %576, label %3939

576:                                              ; preds = %572
  %577 = getelementptr inbounds i8, ptr %0, i64 3
  %578 = load i8, ptr %577, align 1, !tbaa !5
  %579 = icmp eq i8 %578, 116
  br i1 %579, label %3947, label %3939

580:                                              ; preds = %550
  %581 = getelementptr inbounds i8, ptr %0, i64 2
  %582 = load i8, ptr %581, align 1, !tbaa !5
  %583 = icmp eq i8 %582, 97
  br i1 %583, label %584, label %3939

584:                                              ; preds = %580
  %585 = getelementptr inbounds i8, ptr %0, i64 3
  %586 = load i8, ptr %585, align 1, !tbaa !5
  %587 = icmp eq i8 %586, 116
  br i1 %587, label %3947, label %3939

588:                                              ; preds = %280
  %589 = getelementptr inbounds i8, ptr %0, i64 1
  %590 = load i8, ptr %589, align 1, !tbaa !5
  switch i8 %590, label %3939 [
    i8 101, label %591
    i8 105, label %599
  ]

591:                                              ; preds = %588
  %592 = getelementptr inbounds i8, ptr %0, i64 2
  %593 = load i8, ptr %592, align 1, !tbaa !5
  %594 = icmp eq i8 %593, 108
  br i1 %594, label %595, label %3939

595:                                              ; preds = %591
  %596 = getelementptr inbounds i8, ptr %0, i64 3
  %597 = load i8, ptr %596, align 1, !tbaa !5
  %598 = icmp eq i8 %597, 108
  br i1 %598, label %3947, label %3939

599:                                              ; preds = %588
  %600 = getelementptr inbounds i8, ptr %0, i64 2
  %601 = load i8, ptr %600, align 1, !tbaa !5
  switch i8 %601, label %3939 [
    i8 101, label %602
    i8 109, label %606
  ]

602:                                              ; preds = %599
  %603 = getelementptr inbounds i8, ptr %0, i64 3
  %604 = load i8, ptr %603, align 1, !tbaa !5
  %605 = icmp eq i8 %604, 100
  br i1 %605, label %3947, label %3939

606:                                              ; preds = %599
  %607 = getelementptr inbounds i8, ptr %0, i64 3
  %608 = load i8, ptr %607, align 1, !tbaa !5
  %609 = icmp eq i8 %608, 101
  br i1 %609, label %3947, label %3939

610:                                              ; preds = %280
  %611 = getelementptr inbounds i8, ptr %0, i64 1
  %612 = load i8, ptr %611, align 1, !tbaa !5
  switch i8 %612, label %3939 [
    i8 97, label %613
    i8 104, label %624
  ]

613:                                              ; preds = %610
  %614 = getelementptr inbounds i8, ptr %0, i64 2
  %615 = load i8, ptr %614, align 1, !tbaa !5
  switch i8 %615, label %3939 [
    i8 105, label %616
    i8 114, label %620
  ]

616:                                              ; preds = %613
  %617 = getelementptr inbounds i8, ptr %0, i64 3
  %618 = load i8, ptr %617, align 1, !tbaa !5
  %619 = icmp eq i8 %618, 116
  br i1 %619, label %3947, label %3939

620:                                              ; preds = %613
  %621 = getelementptr inbounds i8, ptr %0, i64 3
  %622 = load i8, ptr %621, align 1, !tbaa !5
  %623 = icmp eq i8 %622, 110
  br i1 %623, label %3947, label %3939

624:                                              ; preds = %610
  %625 = getelementptr inbounds i8, ptr %0, i64 2
  %626 = load i8, ptr %625, align 1, !tbaa !5
  %627 = icmp eq i8 %626, 101
  br i1 %627, label %628, label %3939

628:                                              ; preds = %624
  %629 = getelementptr inbounds i8, ptr %0, i64 3
  %630 = load i8, ptr %629, align 1, !tbaa !5
  %631 = icmp eq i8 %630, 110
  br i1 %631, label %632, label %3939

632:                                              ; preds = %628
  br i1 %2, label %3947, label %633

633:                                              ; preds = %632
  %634 = load ptr, ptr @PL_curcop, align 8, !tbaa !8
  %635 = getelementptr %struct.cop, ptr %634, i64 0, i32 10
  %636 = load i32, ptr %635, align 8, !tbaa !10
  %637 = and i32 %636, 469762048
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %3947, label %639

639:                                              ; preds = %633
  %640 = and i32 %636, 268435456
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %3947, label %642

642:                                              ; preds = %639
  %643 = and i32 %636, 469893120
  %644 = icmp eq i32 %643, 469893120
  br i1 %644, label %645, label %3947

645:                                              ; preds = %642
  %646 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.2, i64 noundef 6) #2
  %647 = select i1 %646, i32 249, i32 0
  br label %3947

648:                                              ; preds = %3
  %649 = load i8, ptr %0, align 1, !tbaa !5
  switch i8 %649, label %3939 [
    i8 66, label %650
    i8 67, label %666
    i8 97, label %682
    i8 98, label %709
    i8 99, label %752
    i8 101, label %809
    i8 102, label %825
    i8 103, label %852
    i8 105, label %884
    i8 108, label %911
    i8 109, label %938
    i8 112, label %954
    i8 114, label %970
    i8 115, label %997
    i8 116, label %1095
    i8 117, label %1111
    i8 119, label %1160
  ]

650:                                              ; preds = %648
  %651 = getelementptr inbounds i8, ptr %0, i64 1
  %652 = load i8, ptr %651, align 1, !tbaa !5
  %653 = icmp eq i8 %652, 69
  br i1 %653, label %654, label %3939

654:                                              ; preds = %650
  %655 = getelementptr inbounds i8, ptr %0, i64 2
  %656 = load i8, ptr %655, align 1, !tbaa !5
  %657 = icmp eq i8 %656, 71
  br i1 %657, label %658, label %3939

658:                                              ; preds = %654
  %659 = getelementptr inbounds i8, ptr %0, i64 3
  %660 = load i8, ptr %659, align 1, !tbaa !5
  %661 = icmp eq i8 %660, 73
  br i1 %661, label %662, label %3939

662:                                              ; preds = %658
  %663 = getelementptr inbounds i8, ptr %0, i64 4
  %664 = load i8, ptr %663, align 1, !tbaa !5
  %665 = icmp eq i8 %664, 78
  br i1 %665, label %3947, label %3939

666:                                              ; preds = %648
  %667 = getelementptr inbounds i8, ptr %0, i64 1
  %668 = load i8, ptr %667, align 1, !tbaa !5
  %669 = icmp eq i8 %668, 72
  br i1 %669, label %670, label %3939

670:                                              ; preds = %666
  %671 = getelementptr inbounds i8, ptr %0, i64 2
  %672 = load i8, ptr %671, align 1, !tbaa !5
  %673 = icmp eq i8 %672, 69
  br i1 %673, label %674, label %3939

674:                                              ; preds = %670
  %675 = getelementptr inbounds i8, ptr %0, i64 3
  %676 = load i8, ptr %675, align 1, !tbaa !5
  %677 = icmp eq i8 %676, 67
  br i1 %677, label %678, label %3939

678:                                              ; preds = %674
  %679 = getelementptr inbounds i8, ptr %0, i64 4
  %680 = load i8, ptr %679, align 1, !tbaa !5
  %681 = icmp eq i8 %680, 75
  br i1 %681, label %3947, label %3939

682:                                              ; preds = %648
  %683 = getelementptr inbounds i8, ptr %0, i64 1
  %684 = load i8, ptr %683, align 1, !tbaa !5
  switch i8 %684, label %3939 [
    i8 108, label %685
    i8 116, label %697
  ]

685:                                              ; preds = %682
  %686 = getelementptr inbounds i8, ptr %0, i64 2
  %687 = load i8, ptr %686, align 1, !tbaa !5
  %688 = icmp eq i8 %687, 97
  br i1 %688, label %689, label %3939

689:                                              ; preds = %685
  %690 = getelementptr inbounds i8, ptr %0, i64 3
  %691 = load i8, ptr %690, align 1, !tbaa !5
  %692 = icmp eq i8 %691, 114
  br i1 %692, label %693, label %3939

693:                                              ; preds = %689
  %694 = getelementptr inbounds i8, ptr %0, i64 4
  %695 = load i8, ptr %694, align 1, !tbaa !5
  %696 = icmp eq i8 %695, 109
  br i1 %696, label %3947, label %3939

697:                                              ; preds = %682
  %698 = getelementptr inbounds i8, ptr %0, i64 2
  %699 = load i8, ptr %698, align 1, !tbaa !5
  %700 = icmp eq i8 %699, 97
  br i1 %700, label %701, label %3939

701:                                              ; preds = %697
  %702 = getelementptr inbounds i8, ptr %0, i64 3
  %703 = load i8, ptr %702, align 1, !tbaa !5
  %704 = icmp eq i8 %703, 110
  br i1 %704, label %705, label %3939

705:                                              ; preds = %701
  %706 = getelementptr inbounds i8, ptr %0, i64 4
  %707 = load i8, ptr %706, align 1, !tbaa !5
  %708 = icmp eq i8 %707, 50
  br i1 %708, label %3947, label %3939

709:                                              ; preds = %648
  %710 = getelementptr inbounds i8, ptr %0, i64 1
  %711 = load i8, ptr %710, align 1, !tbaa !5
  switch i8 %711, label %3939 [
    i8 108, label %712
    i8 114, label %724
  ]

712:                                              ; preds = %709
  %713 = getelementptr inbounds i8, ptr %0, i64 2
  %714 = load i8, ptr %713, align 1, !tbaa !5
  %715 = icmp eq i8 %714, 101
  br i1 %715, label %716, label %3939

716:                                              ; preds = %712
  %717 = getelementptr inbounds i8, ptr %0, i64 3
  %718 = load i8, ptr %717, align 1, !tbaa !5
  %719 = icmp eq i8 %718, 115
  br i1 %719, label %720, label %3939

720:                                              ; preds = %716
  %721 = getelementptr inbounds i8, ptr %0, i64 4
  %722 = load i8, ptr %721, align 1, !tbaa !5
  %723 = icmp eq i8 %722, 115
  br i1 %723, label %3947, label %3939

724:                                              ; preds = %709
  %725 = getelementptr inbounds i8, ptr %0, i64 2
  %726 = load i8, ptr %725, align 1, !tbaa !5
  %727 = icmp eq i8 %726, 101
  br i1 %727, label %728, label %3939

728:                                              ; preds = %724
  %729 = getelementptr inbounds i8, ptr %0, i64 3
  %730 = load i8, ptr %729, align 1, !tbaa !5
  %731 = icmp eq i8 %730, 97
  br i1 %731, label %732, label %3939

732:                                              ; preds = %728
  %733 = getelementptr inbounds i8, ptr %0, i64 4
  %734 = load i8, ptr %733, align 1, !tbaa !5
  %735 = icmp eq i8 %734, 107
  br i1 %735, label %736, label %3939

736:                                              ; preds = %732
  br i1 %2, label %3947, label %737

737:                                              ; preds = %736
  %738 = load ptr, ptr @PL_curcop, align 8, !tbaa !8
  %739 = getelementptr %struct.cop, ptr %738, i64 0, i32 10
  %740 = load i32, ptr %739, align 8, !tbaa !10
  %741 = and i32 %740, 469762048
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %3947, label %743

743:                                              ; preds = %737
  %744 = and i32 %740, 268435456
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %3947, label %746

746:                                              ; preds = %743
  %747 = and i32 %740, 469893120
  %748 = icmp eq i32 %747, 469893120
  br i1 %748, label %749, label %3947

749:                                              ; preds = %746
  %750 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.2, i64 noundef 6) #2
  %751 = select i1 %750, i32 -22, i32 0
  br label %3947

752:                                              ; preds = %648
  %753 = getelementptr inbounds i8, ptr %0, i64 1
  %754 = load i8, ptr %753, align 1, !tbaa !5
  switch i8 %754, label %3939 [
    i8 104, label %755
    i8 108, label %785
    i8 114, label %797
  ]

755:                                              ; preds = %752
  %756 = getelementptr inbounds i8, ptr %0, i64 2
  %757 = load i8, ptr %756, align 1, !tbaa !5
  switch i8 %757, label %3939 [
    i8 100, label %758
    i8 109, label %766
    i8 111, label %774
  ]

758:                                              ; preds = %755
  %759 = getelementptr inbounds i8, ptr %0, i64 3
  %760 = load i8, ptr %759, align 1, !tbaa !5
  %761 = icmp eq i8 %760, 105
  br i1 %761, label %762, label %3939

762:                                              ; preds = %758
  %763 = getelementptr inbounds i8, ptr %0, i64 4
  %764 = load i8, ptr %763, align 1, !tbaa !5
  %765 = icmp eq i8 %764, 114
  br i1 %765, label %3947, label %3939

766:                                              ; preds = %755
  %767 = getelementptr inbounds i8, ptr %0, i64 3
  %768 = load i8, ptr %767, align 1, !tbaa !5
  %769 = icmp eq i8 %768, 111
  br i1 %769, label %770, label %3939

770:                                              ; preds = %766
  %771 = getelementptr inbounds i8, ptr %0, i64 4
  %772 = load i8, ptr %771, align 1, !tbaa !5
  %773 = icmp eq i8 %772, 100
  br i1 %773, label %3947, label %3939

774:                                              ; preds = %755
  %775 = getelementptr inbounds i8, ptr %0, i64 3
  %776 = load i8, ptr %775, align 1, !tbaa !5
  switch i8 %776, label %3939 [
    i8 109, label %777
    i8 119, label %781
  ]

777:                                              ; preds = %774
  %778 = getelementptr inbounds i8, ptr %0, i64 4
  %779 = load i8, ptr %778, align 1, !tbaa !5
  %780 = icmp eq i8 %779, 112
  br i1 %780, label %3947, label %3939

781:                                              ; preds = %774
  %782 = getelementptr inbounds i8, ptr %0, i64 4
  %783 = load i8, ptr %782, align 1, !tbaa !5
  %784 = icmp eq i8 %783, 110
  br i1 %784, label %3947, label %3939

785:                                              ; preds = %752
  %786 = getelementptr inbounds i8, ptr %0, i64 2
  %787 = load i8, ptr %786, align 1, !tbaa !5
  %788 = icmp eq i8 %787, 111
  br i1 %788, label %789, label %3939

789:                                              ; preds = %785
  %790 = getelementptr inbounds i8, ptr %0, i64 3
  %791 = load i8, ptr %790, align 1, !tbaa !5
  %792 = icmp eq i8 %791, 115
  br i1 %792, label %793, label %3939

793:                                              ; preds = %789
  %794 = getelementptr inbounds i8, ptr %0, i64 4
  %795 = load i8, ptr %794, align 1, !tbaa !5
  %796 = icmp eq i8 %795, 101
  br i1 %796, label %3947, label %3939

797:                                              ; preds = %752
  %798 = getelementptr inbounds i8, ptr %0, i64 2
  %799 = load i8, ptr %798, align 1, !tbaa !5
  %800 = icmp eq i8 %799, 121
  br i1 %800, label %801, label %3939

801:                                              ; preds = %797
  %802 = getelementptr inbounds i8, ptr %0, i64 3
  %803 = load i8, ptr %802, align 1, !tbaa !5
  %804 = icmp eq i8 %803, 112
  br i1 %804, label %805, label %3939

805:                                              ; preds = %801
  %806 = getelementptr inbounds i8, ptr %0, i64 4
  %807 = load i8, ptr %806, align 1, !tbaa !5
  %808 = icmp eq i8 %807, 116
  br i1 %808, label %3947, label %3939

809:                                              ; preds = %648
  %810 = getelementptr inbounds i8, ptr %0, i64 1
  %811 = load i8, ptr %810, align 1, !tbaa !5
  %812 = icmp eq i8 %811, 108
  br i1 %812, label %813, label %3939

813:                                              ; preds = %809
  %814 = getelementptr inbounds i8, ptr %0, i64 2
  %815 = load i8, ptr %814, align 1, !tbaa !5
  %816 = icmp eq i8 %815, 115
  br i1 %816, label %817, label %3939

817:                                              ; preds = %813
  %818 = getelementptr inbounds i8, ptr %0, i64 3
  %819 = load i8, ptr %818, align 1, !tbaa !5
  %820 = icmp eq i8 %819, 105
  br i1 %820, label %821, label %3939

821:                                              ; preds = %817
  %822 = getelementptr inbounds i8, ptr %0, i64 4
  %823 = load i8, ptr %822, align 1, !tbaa !5
  %824 = icmp eq i8 %823, 102
  br i1 %824, label %3947, label %3939

825:                                              ; preds = %648
  %826 = getelementptr inbounds i8, ptr %0, i64 1
  %827 = load i8, ptr %826, align 1, !tbaa !5
  switch i8 %827, label %3939 [
    i8 99, label %828
    i8 108, label %840
  ]

828:                                              ; preds = %825
  %829 = getelementptr inbounds i8, ptr %0, i64 2
  %830 = load i8, ptr %829, align 1, !tbaa !5
  %831 = icmp eq i8 %830, 110
  br i1 %831, label %832, label %3939

832:                                              ; preds = %828
  %833 = getelementptr inbounds i8, ptr %0, i64 3
  %834 = load i8, ptr %833, align 1, !tbaa !5
  %835 = icmp eq i8 %834, 116
  br i1 %835, label %836, label %3939

836:                                              ; preds = %832
  %837 = getelementptr inbounds i8, ptr %0, i64 4
  %838 = load i8, ptr %837, align 1, !tbaa !5
  %839 = icmp eq i8 %838, 108
  br i1 %839, label %3947, label %3939

840:                                              ; preds = %825
  %841 = getelementptr inbounds i8, ptr %0, i64 2
  %842 = load i8, ptr %841, align 1, !tbaa !5
  %843 = icmp eq i8 %842, 111
  br i1 %843, label %844, label %3939

844:                                              ; preds = %840
  %845 = getelementptr inbounds i8, ptr %0, i64 3
  %846 = load i8, ptr %845, align 1, !tbaa !5
  %847 = icmp eq i8 %846, 99
  br i1 %847, label %848, label %3939

848:                                              ; preds = %844
  %849 = getelementptr inbounds i8, ptr %0, i64 4
  %850 = load i8, ptr %849, align 1, !tbaa !5
  %851 = icmp eq i8 %850, 107
  br i1 %851, label %3947, label %3939

852:                                              ; preds = %648
  %853 = getelementptr inbounds i8, ptr %0, i64 1
  %854 = load i8, ptr %853, align 1, !tbaa !5
  %855 = icmp eq i8 %854, 105
  br i1 %855, label %856, label %3939

856:                                              ; preds = %852
  %857 = getelementptr inbounds i8, ptr %0, i64 2
  %858 = load i8, ptr %857, align 1, !tbaa !5
  %859 = icmp eq i8 %858, 118
  br i1 %859, label %860, label %3939

860:                                              ; preds = %856
  %861 = getelementptr inbounds i8, ptr %0, i64 3
  %862 = load i8, ptr %861, align 1, !tbaa !5
  %863 = icmp eq i8 %862, 101
  br i1 %863, label %864, label %3939

864:                                              ; preds = %860
  %865 = getelementptr inbounds i8, ptr %0, i64 4
  %866 = load i8, ptr %865, align 1, !tbaa !5
  %867 = icmp eq i8 %866, 110
  br i1 %867, label %868, label %3939

868:                                              ; preds = %864
  br i1 %2, label %3947, label %869

869:                                              ; preds = %868
  %870 = load ptr, ptr @PL_curcop, align 8, !tbaa !8
  %871 = getelementptr %struct.cop, ptr %870, i64 0, i32 10
  %872 = load i32, ptr %871, align 8, !tbaa !10
  %873 = and i32 %872, 469762048
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %3947, label %875

875:                                              ; preds = %869
  %876 = and i32 %872, 268435456
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %3947, label %878

878:                                              ; preds = %875
  %879 = and i32 %872, 469893120
  %880 = icmp eq i32 %879, 469893120
  br i1 %880, label %881, label %3947

881:                                              ; preds = %878
  %882 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.2, i64 noundef 6) #2
  %883 = select i1 %882, i32 99, i32 0
  br label %3947

884:                                              ; preds = %648
  %885 = getelementptr inbounds i8, ptr %0, i64 1
  %886 = load i8, ptr %885, align 1, !tbaa !5
  switch i8 %886, label %3939 [
    i8 110, label %887
    i8 111, label %899
  ]

887:                                              ; preds = %884
  %888 = getelementptr inbounds i8, ptr %0, i64 2
  %889 = load i8, ptr %888, align 1, !tbaa !5
  %890 = icmp eq i8 %889, 100
  br i1 %890, label %891, label %3939

891:                                              ; preds = %887
  %892 = getelementptr inbounds i8, ptr %0, i64 3
  %893 = load i8, ptr %892, align 1, !tbaa !5
  %894 = icmp eq i8 %893, 101
  br i1 %894, label %895, label %3939

895:                                              ; preds = %891
  %896 = getelementptr inbounds i8, ptr %0, i64 4
  %897 = load i8, ptr %896, align 1, !tbaa !5
  %898 = icmp eq i8 %897, 120
  br i1 %898, label %3947, label %3939

899:                                              ; preds = %884
  %900 = getelementptr inbounds i8, ptr %0, i64 2
  %901 = load i8, ptr %900, align 1, !tbaa !5
  %902 = icmp eq i8 %901, 99
  br i1 %902, label %903, label %3939

903:                                              ; preds = %899
  %904 = getelementptr inbounds i8, ptr %0, i64 3
  %905 = load i8, ptr %904, align 1, !tbaa !5
  %906 = icmp eq i8 %905, 116
  br i1 %906, label %907, label %3939

907:                                              ; preds = %903
  %908 = getelementptr inbounds i8, ptr %0, i64 4
  %909 = load i8, ptr %908, align 1, !tbaa !5
  %910 = icmp eq i8 %909, 108
  br i1 %910, label %3947, label %3939

911:                                              ; preds = %648
  %912 = getelementptr inbounds i8, ptr %0, i64 1
  %913 = load i8, ptr %912, align 1, !tbaa !5
  switch i8 %913, label %3939 [
    i8 111, label %914
    i8 115, label %926
  ]

914:                                              ; preds = %911
  %915 = getelementptr inbounds i8, ptr %0, i64 2
  %916 = load i8, ptr %915, align 1, !tbaa !5
  %917 = icmp eq i8 %916, 99
  br i1 %917, label %918, label %3939

918:                                              ; preds = %914
  %919 = getelementptr inbounds i8, ptr %0, i64 3
  %920 = load i8, ptr %919, align 1, !tbaa !5
  %921 = icmp eq i8 %920, 97
  br i1 %921, label %922, label %3939

922:                                              ; preds = %918
  %923 = getelementptr inbounds i8, ptr %0, i64 4
  %924 = load i8, ptr %923, align 1, !tbaa !5
  %925 = icmp eq i8 %924, 108
  br i1 %925, label %3947, label %3939

926:                                              ; preds = %911
  %927 = getelementptr inbounds i8, ptr %0, i64 2
  %928 = load i8, ptr %927, align 1, !tbaa !5
  %929 = icmp eq i8 %928, 116
  br i1 %929, label %930, label %3939

930:                                              ; preds = %926
  %931 = getelementptr inbounds i8, ptr %0, i64 3
  %932 = load i8, ptr %931, align 1, !tbaa !5
  %933 = icmp eq i8 %932, 97
  br i1 %933, label %934, label %3939

934:                                              ; preds = %930
  %935 = getelementptr inbounds i8, ptr %0, i64 4
  %936 = load i8, ptr %935, align 1, !tbaa !5
  %937 = icmp eq i8 %936, 116
  br i1 %937, label %3947, label %3939

938:                                              ; preds = %648
  %939 = getelementptr inbounds i8, ptr %0, i64 1
  %940 = load i8, ptr %939, align 1, !tbaa !5
  %941 = icmp eq i8 %940, 107
  br i1 %941, label %942, label %3939

942:                                              ; preds = %938
  %943 = getelementptr inbounds i8, ptr %0, i64 2
  %944 = load i8, ptr %943, align 1, !tbaa !5
  %945 = icmp eq i8 %944, 100
  br i1 %945, label %946, label %3939

946:                                              ; preds = %942
  %947 = getelementptr inbounds i8, ptr %0, i64 3
  %948 = load i8, ptr %947, align 1, !tbaa !5
  %949 = icmp eq i8 %948, 105
  br i1 %949, label %950, label %3939

950:                                              ; preds = %946
  %951 = getelementptr inbounds i8, ptr %0, i64 4
  %952 = load i8, ptr %951, align 1, !tbaa !5
  %953 = icmp eq i8 %952, 114
  br i1 %953, label %3947, label %3939

954:                                              ; preds = %648
  %955 = getelementptr inbounds i8, ptr %0, i64 1
  %956 = load i8, ptr %955, align 1, !tbaa !5
  %957 = icmp eq i8 %956, 114
  br i1 %957, label %958, label %3939

958:                                              ; preds = %954
  %959 = getelementptr inbounds i8, ptr %0, i64 2
  %960 = load i8, ptr %959, align 1, !tbaa !5
  %961 = icmp eq i8 %960, 105
  br i1 %961, label %962, label %3939

962:                                              ; preds = %958
  %963 = getelementptr inbounds i8, ptr %0, i64 3
  %964 = load i8, ptr %963, align 1, !tbaa !5
  %965 = icmp eq i8 %964, 110
  br i1 %965, label %966, label %3939

966:                                              ; preds = %962
  %967 = getelementptr inbounds i8, ptr %0, i64 4
  %968 = load i8, ptr %967, align 1, !tbaa !5
  %969 = icmp eq i8 %968, 116
  br i1 %969, label %3947, label %3939

970:                                              ; preds = %648
  %971 = getelementptr inbounds i8, ptr %0, i64 1
  %972 = load i8, ptr %971, align 1, !tbaa !5
  switch i8 %972, label %3939 [
    i8 101, label %973
    i8 109, label %985
  ]

973:                                              ; preds = %970
  %974 = getelementptr inbounds i8, ptr %0, i64 2
  %975 = load i8, ptr %974, align 1, !tbaa !5
  %976 = icmp eq i8 %975, 115
  br i1 %976, label %977, label %3939

977:                                              ; preds = %973
  %978 = getelementptr inbounds i8, ptr %0, i64 3
  %979 = load i8, ptr %978, align 1, !tbaa !5
  %980 = icmp eq i8 %979, 101
  br i1 %980, label %981, label %3939

981:                                              ; preds = %977
  %982 = getelementptr inbounds i8, ptr %0, i64 4
  %983 = load i8, ptr %982, align 1, !tbaa !5
  %984 = icmp eq i8 %983, 116
  br i1 %984, label %3947, label %3939

985:                                              ; preds = %970
  %986 = getelementptr inbounds i8, ptr %0, i64 2
  %987 = load i8, ptr %986, align 1, !tbaa !5
  %988 = icmp eq i8 %987, 100
  br i1 %988, label %989, label %3939

989:                                              ; preds = %985
  %990 = getelementptr inbounds i8, ptr %0, i64 3
  %991 = load i8, ptr %990, align 1, !tbaa !5
  %992 = icmp eq i8 %991, 105
  br i1 %992, label %993, label %3939

993:                                              ; preds = %989
  %994 = getelementptr inbounds i8, ptr %0, i64 4
  %995 = load i8, ptr %994, align 1, !tbaa !5
  %996 = icmp eq i8 %995, 114
  br i1 %996, label %3947, label %3939

997:                                              ; preds = %648
  %998 = getelementptr inbounds i8, ptr %0, i64 1
  %999 = load i8, ptr %998, align 1, !tbaa !5
  switch i8 %999, label %3939 [
    i8 101, label %1000
    i8 104, label %1012
    i8 108, label %1024
    i8 112, label %1036
    i8 114, label %1048
    i8 116, label %1060
  ]

1000:                                             ; preds = %997
  %1001 = getelementptr inbounds i8, ptr %0, i64 2
  %1002 = load i8, ptr %1001, align 1, !tbaa !5
  %1003 = icmp eq i8 %1002, 109
  br i1 %1003, label %1004, label %3939

1004:                                             ; preds = %1000
  %1005 = getelementptr inbounds i8, ptr %0, i64 3
  %1006 = load i8, ptr %1005, align 1, !tbaa !5
  %1007 = icmp eq i8 %1006, 111
  br i1 %1007, label %1008, label %3939

1008:                                             ; preds = %1004
  %1009 = getelementptr inbounds i8, ptr %0, i64 4
  %1010 = load i8, ptr %1009, align 1, !tbaa !5
  %1011 = icmp eq i8 %1010, 112
  br i1 %1011, label %3947, label %3939

1012:                                             ; preds = %997
  %1013 = getelementptr inbounds i8, ptr %0, i64 2
  %1014 = load i8, ptr %1013, align 1, !tbaa !5
  %1015 = icmp eq i8 %1014, 105
  br i1 %1015, label %1016, label %3939

1016:                                             ; preds = %1012
  %1017 = getelementptr inbounds i8, ptr %0, i64 3
  %1018 = load i8, ptr %1017, align 1, !tbaa !5
  %1019 = icmp eq i8 %1018, 102
  br i1 %1019, label %1020, label %3939

1020:                                             ; preds = %1016
  %1021 = getelementptr inbounds i8, ptr %0, i64 4
  %1022 = load i8, ptr %1021, align 1, !tbaa !5
  %1023 = icmp eq i8 %1022, 116
  br i1 %1023, label %3947, label %3939

1024:                                             ; preds = %997
  %1025 = getelementptr inbounds i8, ptr %0, i64 2
  %1026 = load i8, ptr %1025, align 1, !tbaa !5
  %1027 = icmp eq i8 %1026, 101
  br i1 %1027, label %1028, label %3939

1028:                                             ; preds = %1024
  %1029 = getelementptr inbounds i8, ptr %0, i64 3
  %1030 = load i8, ptr %1029, align 1, !tbaa !5
  %1031 = icmp eq i8 %1030, 101
  br i1 %1031, label %1032, label %3939

1032:                                             ; preds = %1028
  %1033 = getelementptr inbounds i8, ptr %0, i64 4
  %1034 = load i8, ptr %1033, align 1, !tbaa !5
  %1035 = icmp eq i8 %1034, 112
  br i1 %1035, label %3947, label %3939

1036:                                             ; preds = %997
  %1037 = getelementptr inbounds i8, ptr %0, i64 2
  %1038 = load i8, ptr %1037, align 1, !tbaa !5
  %1039 = icmp eq i8 %1038, 108
  br i1 %1039, label %1040, label %3939

1040:                                             ; preds = %1036
  %1041 = getelementptr inbounds i8, ptr %0, i64 3
  %1042 = load i8, ptr %1041, align 1, !tbaa !5
  %1043 = icmp eq i8 %1042, 105
  br i1 %1043, label %1044, label %3939

1044:                                             ; preds = %1040
  %1045 = getelementptr inbounds i8, ptr %0, i64 4
  %1046 = load i8, ptr %1045, align 1, !tbaa !5
  %1047 = icmp eq i8 %1046, 116
  br i1 %1047, label %3947, label %3939

1048:                                             ; preds = %997
  %1049 = getelementptr inbounds i8, ptr %0, i64 2
  %1050 = load i8, ptr %1049, align 1, !tbaa !5
  %1051 = icmp eq i8 %1050, 97
  br i1 %1051, label %1052, label %3939

1052:                                             ; preds = %1048
  %1053 = getelementptr inbounds i8, ptr %0, i64 3
  %1054 = load i8, ptr %1053, align 1, !tbaa !5
  %1055 = icmp eq i8 %1054, 110
  br i1 %1055, label %1056, label %3939

1056:                                             ; preds = %1052
  %1057 = getelementptr inbounds i8, ptr %0, i64 4
  %1058 = load i8, ptr %1057, align 1, !tbaa !5
  %1059 = icmp eq i8 %1058, 100
  br i1 %1059, label %3947, label %3939

1060:                                             ; preds = %997
  %1061 = getelementptr inbounds i8, ptr %0, i64 2
  %1062 = load i8, ptr %1061, align 1, !tbaa !5
  switch i8 %1062, label %3939 [
    i8 97, label %1063
    i8 117, label %1087
  ]

1063:                                             ; preds = %1060
  %1064 = getelementptr inbounds i8, ptr %0, i64 3
  %1065 = load i8, ptr %1064, align 1, !tbaa !5
  %1066 = icmp eq i8 %1065, 116
  br i1 %1066, label %1067, label %3939

1067:                                             ; preds = %1063
  %1068 = getelementptr inbounds i8, ptr %0, i64 4
  %1069 = load i8, ptr %1068, align 1, !tbaa !5
  %1070 = icmp eq i8 %1069, 101
  br i1 %1070, label %1071, label %3939

1071:                                             ; preds = %1067
  br i1 %2, label %3947, label %1072

1072:                                             ; preds = %1071
  %1073 = load ptr, ptr @PL_curcop, align 8, !tbaa !8
  %1074 = getelementptr %struct.cop, ptr %1073, i64 0, i32 10
  %1075 = load i32, ptr %1074, align 8, !tbaa !10
  %1076 = and i32 %1075, 469762048
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %3947, label %1078

1078:                                             ; preds = %1072
  %1079 = and i32 %1075, 268435456
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %3947, label %1081

1081:                                             ; preds = %1078
  %1082 = and i32 %1075, 469893120
  %1083 = icmp eq i32 %1082, 469893120
  br i1 %1083, label %1084, label %3947

1084:                                             ; preds = %1081
  %1085 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.3, i64 noundef 5) #2
  %1086 = select i1 %1085, i32 212, i32 0
  br label %3947

1087:                                             ; preds = %1060
  %1088 = getelementptr inbounds i8, ptr %0, i64 3
  %1089 = load i8, ptr %1088, align 1, !tbaa !5
  %1090 = icmp eq i8 %1089, 100
  br i1 %1090, label %1091, label %3939

1091:                                             ; preds = %1087
  %1092 = getelementptr inbounds i8, ptr %0, i64 4
  %1093 = load i8, ptr %1092, align 1, !tbaa !5
  %1094 = icmp eq i8 %1093, 121
  br i1 %1094, label %3947, label %3939

1095:                                             ; preds = %648
  %1096 = getelementptr inbounds i8, ptr %0, i64 1
  %1097 = load i8, ptr %1096, align 1, !tbaa !5
  %1098 = icmp eq i8 %1097, 105
  br i1 %1098, label %1099, label %3939

1099:                                             ; preds = %1095
  %1100 = getelementptr inbounds i8, ptr %0, i64 2
  %1101 = load i8, ptr %1100, align 1, !tbaa !5
  %1102 = icmp eq i8 %1101, 109
  br i1 %1102, label %1103, label %3939

1103:                                             ; preds = %1099
  %1104 = getelementptr inbounds i8, ptr %0, i64 3
  %1105 = load i8, ptr %1104, align 1, !tbaa !5
  %1106 = icmp eq i8 %1105, 101
  br i1 %1106, label %1107, label %3939

1107:                                             ; preds = %1103
  %1108 = getelementptr inbounds i8, ptr %0, i64 4
  %1109 = load i8, ptr %1108, align 1, !tbaa !5
  %1110 = icmp eq i8 %1109, 115
  br i1 %1110, label %3947, label %3939

1111:                                             ; preds = %648
  %1112 = getelementptr inbounds i8, ptr %0, i64 1
  %1113 = load i8, ptr %1112, align 1, !tbaa !5
  switch i8 %1113, label %3939 [
    i8 109, label %1114
    i8 110, label %1126
    i8 116, label %1148
  ]

1114:                                             ; preds = %1111
  %1115 = getelementptr inbounds i8, ptr %0, i64 2
  %1116 = load i8, ptr %1115, align 1, !tbaa !5
  %1117 = icmp eq i8 %1116, 97
  br i1 %1117, label %1118, label %3939

1118:                                             ; preds = %1114
  %1119 = getelementptr inbounds i8, ptr %0, i64 3
  %1120 = load i8, ptr %1119, align 1, !tbaa !5
  %1121 = icmp eq i8 %1120, 115
  br i1 %1121, label %1122, label %3939

1122:                                             ; preds = %1118
  %1123 = getelementptr inbounds i8, ptr %0, i64 4
  %1124 = load i8, ptr %1123, align 1, !tbaa !5
  %1125 = icmp eq i8 %1124, 107
  br i1 %1125, label %3947, label %3939

1126:                                             ; preds = %1111
  %1127 = getelementptr inbounds i8, ptr %0, i64 2
  %1128 = load i8, ptr %1127, align 1, !tbaa !5
  switch i8 %1128, label %3939 [
    i8 100, label %1129
    i8 116, label %1137
  ]

1129:                                             ; preds = %1126
  %1130 = getelementptr inbounds i8, ptr %0, i64 3
  %1131 = load i8, ptr %1130, align 1, !tbaa !5
  %1132 = icmp eq i8 %1131, 101
  br i1 %1132, label %1133, label %3939

1133:                                             ; preds = %1129
  %1134 = getelementptr inbounds i8, ptr %0, i64 4
  %1135 = load i8, ptr %1134, align 1, !tbaa !5
  %1136 = icmp eq i8 %1135, 102
  br i1 %1136, label %3947, label %3939

1137:                                             ; preds = %1126
  %1138 = getelementptr inbounds i8, ptr %0, i64 3
  %1139 = load i8, ptr %1138, align 1, !tbaa !5
  %1140 = icmp eq i8 %1139, 105
  br i1 %1140, label %1141, label %3939

1141:                                             ; preds = %1137
  %1142 = getelementptr inbounds i8, ptr %0, i64 4
  %1143 = load i8, ptr %1142, align 1, !tbaa !5
  %1144 = icmp eq i8 %1143, 108
  %1145 = select i1 %1144, i32 240, i32 0
  %1146 = icmp eq i8 %1143, 101
  %1147 = select i1 %1146, i32 -239, i32 %1145
  br label %3947

1148:                                             ; preds = %1111
  %1149 = getelementptr inbounds i8, ptr %0, i64 2
  %1150 = load i8, ptr %1149, align 1, !tbaa !5
  %1151 = icmp eq i8 %1150, 105
  br i1 %1151, label %1152, label %3939

1152:                                             ; preds = %1148
  %1153 = getelementptr inbounds i8, ptr %0, i64 3
  %1154 = load i8, ptr %1153, align 1, !tbaa !5
  %1155 = icmp eq i8 %1154, 109
  br i1 %1155, label %1156, label %3939

1156:                                             ; preds = %1152
  %1157 = getelementptr inbounds i8, ptr %0, i64 4
  %1158 = load i8, ptr %1157, align 1, !tbaa !5
  %1159 = icmp eq i8 %1158, 101
  br i1 %1159, label %3947, label %3939

1160:                                             ; preds = %648
  %1161 = getelementptr inbounds i8, ptr %0, i64 1
  %1162 = load i8, ptr %1161, align 1, !tbaa !5
  switch i8 %1162, label %3939 [
    i8 104, label %1163
    i8 114, label %1175
  ]

1163:                                             ; preds = %1160
  %1164 = getelementptr inbounds i8, ptr %0, i64 2
  %1165 = load i8, ptr %1164, align 1, !tbaa !5
  %1166 = icmp eq i8 %1165, 105
  br i1 %1166, label %1167, label %3939

1167:                                             ; preds = %1163
  %1168 = getelementptr inbounds i8, ptr %0, i64 3
  %1169 = load i8, ptr %1168, align 1, !tbaa !5
  %1170 = icmp eq i8 %1169, 108
  br i1 %1170, label %1171, label %3939

1171:                                             ; preds = %1167
  %1172 = getelementptr inbounds i8, ptr %0, i64 4
  %1173 = load i8, ptr %1172, align 1, !tbaa !5
  %1174 = icmp eq i8 %1173, 101
  br i1 %1174, label %3947, label %3939

1175:                                             ; preds = %1160
  %1176 = getelementptr inbounds i8, ptr %0, i64 2
  %1177 = load i8, ptr %1176, align 1, !tbaa !5
  %1178 = icmp eq i8 %1177, 105
  br i1 %1178, label %1179, label %3939

1179:                                             ; preds = %1175
  %1180 = getelementptr inbounds i8, ptr %0, i64 3
  %1181 = load i8, ptr %1180, align 1, !tbaa !5
  %1182 = icmp eq i8 %1181, 116
  br i1 %1182, label %1183, label %3939

1183:                                             ; preds = %1179
  %1184 = getelementptr inbounds i8, ptr %0, i64 4
  %1185 = load i8, ptr %1184, align 1, !tbaa !5
  %1186 = icmp eq i8 %1185, 101
  br i1 %1186, label %3947, label %3939

1187:                                             ; preds = %3
  %1188 = load i8, ptr %0, align 1, !tbaa !5
  switch i8 %1188, label %3939 [
    i8 97, label %1189
    i8 99, label %1209
    i8 100, label %1244
    i8 101, label %1264
    i8 102, label %1300
    i8 103, label %1335
    i8 108, label %1355
    i8 109, label %1390
    i8 112, label %1433
    i8 114, label %1453
    i8 115, label %1499
    i8 117, label %1639
    i8 118, label %1677
  ]

1189:                                             ; preds = %1187
  %1190 = getelementptr inbounds i8, ptr %0, i64 1
  %1191 = load i8, ptr %1190, align 1, !tbaa !5
  %1192 = icmp eq i8 %1191, 99
  br i1 %1192, label %1193, label %3939

1193:                                             ; preds = %1189
  %1194 = getelementptr inbounds i8, ptr %0, i64 2
  %1195 = load i8, ptr %1194, align 1, !tbaa !5
  %1196 = icmp eq i8 %1195, 99
  br i1 %1196, label %1197, label %3939

1197:                                             ; preds = %1193
  %1198 = getelementptr inbounds i8, ptr %0, i64 3
  %1199 = load i8, ptr %1198, align 1, !tbaa !5
  %1200 = icmp eq i8 %1199, 101
  br i1 %1200, label %1201, label %3939

1201:                                             ; preds = %1197
  %1202 = getelementptr inbounds i8, ptr %0, i64 4
  %1203 = load i8, ptr %1202, align 1, !tbaa !5
  %1204 = icmp eq i8 %1203, 112
  br i1 %1204, label %1205, label %3939

1205:                                             ; preds = %1201
  %1206 = getelementptr inbounds i8, ptr %0, i64 5
  %1207 = load i8, ptr %1206, align 1, !tbaa !5
  %1208 = icmp eq i8 %1207, 116
  br i1 %1208, label %3947, label %3939

1209:                                             ; preds = %1187
  %1210 = getelementptr inbounds i8, ptr %0, i64 1
  %1211 = load i8, ptr %1210, align 1, !tbaa !5
  switch i8 %1211, label %3939 [
    i8 97, label %1212
    i8 104, label %1228
  ]

1212:                                             ; preds = %1209
  %1213 = getelementptr inbounds i8, ptr %0, i64 2
  %1214 = load i8, ptr %1213, align 1, !tbaa !5
  %1215 = icmp eq i8 %1214, 108
  br i1 %1215, label %1216, label %3939

1216:                                             ; preds = %1212
  %1217 = getelementptr inbounds i8, ptr %0, i64 3
  %1218 = load i8, ptr %1217, align 1, !tbaa !5
  %1219 = icmp eq i8 %1218, 108
  br i1 %1219, label %1220, label %3939

1220:                                             ; preds = %1216
  %1221 = getelementptr inbounds i8, ptr %0, i64 4
  %1222 = load i8, ptr %1221, align 1, !tbaa !5
  %1223 = icmp eq i8 %1222, 101
  br i1 %1223, label %1224, label %3939

1224:                                             ; preds = %1220
  %1225 = getelementptr inbounds i8, ptr %0, i64 5
  %1226 = load i8, ptr %1225, align 1, !tbaa !5
  %1227 = icmp eq i8 %1226, 114
  br i1 %1227, label %3947, label %3939

1228:                                             ; preds = %1209
  %1229 = getelementptr inbounds i8, ptr %0, i64 2
  %1230 = load i8, ptr %1229, align 1, !tbaa !5
  %1231 = icmp eq i8 %1230, 114
  br i1 %1231, label %1232, label %3939

1232:                                             ; preds = %1228
  %1233 = getelementptr inbounds i8, ptr %0, i64 3
  %1234 = load i8, ptr %1233, align 1, !tbaa !5
  %1235 = icmp eq i8 %1234, 111
  br i1 %1235, label %1236, label %3939

1236:                                             ; preds = %1232
  %1237 = getelementptr inbounds i8, ptr %0, i64 4
  %1238 = load i8, ptr %1237, align 1, !tbaa !5
  %1239 = icmp eq i8 %1238, 111
  br i1 %1239, label %1240, label %3939

1240:                                             ; preds = %1236
  %1241 = getelementptr inbounds i8, ptr %0, i64 5
  %1242 = load i8, ptr %1241, align 1, !tbaa !5
  %1243 = icmp eq i8 %1242, 116
  br i1 %1243, label %3947, label %3939

1244:                                             ; preds = %1187
  %1245 = getelementptr inbounds i8, ptr %0, i64 1
  %1246 = load i8, ptr %1245, align 1, !tbaa !5
  %1247 = icmp eq i8 %1246, 101
  br i1 %1247, label %1248, label %3939

1248:                                             ; preds = %1244
  %1249 = getelementptr inbounds i8, ptr %0, i64 2
  %1250 = load i8, ptr %1249, align 1, !tbaa !5
  %1251 = icmp eq i8 %1250, 108
  br i1 %1251, label %1252, label %3939

1252:                                             ; preds = %1248
  %1253 = getelementptr inbounds i8, ptr %0, i64 3
  %1254 = load i8, ptr %1253, align 1, !tbaa !5
  %1255 = icmp eq i8 %1254, 101
  br i1 %1255, label %1256, label %3939

1256:                                             ; preds = %1252
  %1257 = getelementptr inbounds i8, ptr %0, i64 4
  %1258 = load i8, ptr %1257, align 1, !tbaa !5
  %1259 = icmp eq i8 %1258, 116
  br i1 %1259, label %1260, label %3939

1260:                                             ; preds = %1256
  %1261 = getelementptr inbounds i8, ptr %0, i64 5
  %1262 = load i8, ptr %1261, align 1, !tbaa !5
  %1263 = icmp eq i8 %1262, 101
  br i1 %1263, label %3947, label %3939

1264:                                             ; preds = %1187
  %1265 = getelementptr inbounds i8, ptr %0, i64 1
  %1266 = load i8, ptr %1265, align 1, !tbaa !5
  switch i8 %1266, label %3939 [
    i8 108, label %1267
    i8 120, label %1284
  ]

1267:                                             ; preds = %1264
  %1268 = getelementptr inbounds i8, ptr %0, i64 2
  %1269 = load i8, ptr %1268, align 1, !tbaa !5
  %1270 = icmp eq i8 %1269, 115
  br i1 %1270, label %1271, label %3939

1271:                                             ; preds = %1267
  %1272 = getelementptr inbounds i8, ptr %0, i64 3
  %1273 = load i8, ptr %1272, align 1, !tbaa !5
  %1274 = icmp eq i8 %1273, 101
  br i1 %1274, label %1275, label %3939

1275:                                             ; preds = %1271
  %1276 = getelementptr inbounds i8, ptr %0, i64 4
  %1277 = load i8, ptr %1276, align 1, !tbaa !5
  %1278 = icmp eq i8 %1277, 105
  br i1 %1278, label %1279, label %3939

1279:                                             ; preds = %1275
  %1280 = getelementptr inbounds i8, ptr %0, i64 5
  %1281 = load i8, ptr %1280, align 1, !tbaa !5
  %1282 = icmp eq i8 %1281, 102
  br i1 %1282, label %1283, label %3939

1283:                                             ; preds = %1279
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 28, ptr noundef nonnull @.str.4) #2
  br label %3939

1284:                                             ; preds = %1264
  %1285 = getelementptr inbounds i8, ptr %0, i64 2
  %1286 = load i8, ptr %1285, align 1, !tbaa !5
  %1287 = icmp eq i8 %1286, 105
  br i1 %1287, label %1288, label %3939

1288:                                             ; preds = %1284
  %1289 = getelementptr inbounds i8, ptr %0, i64 3
  %1290 = load i8, ptr %1289, align 1, !tbaa !5
  %1291 = icmp eq i8 %1290, 115
  br i1 %1291, label %1292, label %3939

1292:                                             ; preds = %1288
  %1293 = getelementptr inbounds i8, ptr %0, i64 4
  %1294 = load i8, ptr %1293, align 1, !tbaa !5
  %1295 = icmp eq i8 %1294, 116
  br i1 %1295, label %1296, label %3939

1296:                                             ; preds = %1292
  %1297 = getelementptr inbounds i8, ptr %0, i64 5
  %1298 = load i8, ptr %1297, align 1, !tbaa !5
  %1299 = icmp eq i8 %1298, 115
  br i1 %1299, label %3947, label %3939

1300:                                             ; preds = %1187
  %1301 = getelementptr inbounds i8, ptr %0, i64 1
  %1302 = load i8, ptr %1301, align 1, !tbaa !5
  switch i8 %1302, label %3939 [
    i8 105, label %1303
    i8 111, label %1319
  ]

1303:                                             ; preds = %1300
  %1304 = getelementptr inbounds i8, ptr %0, i64 2
  %1305 = load i8, ptr %1304, align 1, !tbaa !5
  %1306 = icmp eq i8 %1305, 108
  br i1 %1306, label %1307, label %3939

1307:                                             ; preds = %1303
  %1308 = getelementptr inbounds i8, ptr %0, i64 3
  %1309 = load i8, ptr %1308, align 1, !tbaa !5
  %1310 = icmp eq i8 %1309, 101
  br i1 %1310, label %1311, label %3939

1311:                                             ; preds = %1307
  %1312 = getelementptr inbounds i8, ptr %0, i64 4
  %1313 = load i8, ptr %1312, align 1, !tbaa !5
  %1314 = icmp eq i8 %1313, 110
  br i1 %1314, label %1315, label %3939

1315:                                             ; preds = %1311
  %1316 = getelementptr inbounds i8, ptr %0, i64 5
  %1317 = load i8, ptr %1316, align 1, !tbaa !5
  %1318 = icmp eq i8 %1317, 111
  br i1 %1318, label %3947, label %3939

1319:                                             ; preds = %1300
  %1320 = getelementptr inbounds i8, ptr %0, i64 2
  %1321 = load i8, ptr %1320, align 1, !tbaa !5
  %1322 = icmp eq i8 %1321, 114
  br i1 %1322, label %1323, label %3939

1323:                                             ; preds = %1319
  %1324 = getelementptr inbounds i8, ptr %0, i64 3
  %1325 = load i8, ptr %1324, align 1, !tbaa !5
  %1326 = icmp eq i8 %1325, 109
  br i1 %1326, label %1327, label %3939

1327:                                             ; preds = %1323
  %1328 = getelementptr inbounds i8, ptr %0, i64 4
  %1329 = load i8, ptr %1328, align 1, !tbaa !5
  %1330 = icmp eq i8 %1329, 97
  br i1 %1330, label %1331, label %3939

1331:                                             ; preds = %1327
  %1332 = getelementptr inbounds i8, ptr %0, i64 5
  %1333 = load i8, ptr %1332, align 1, !tbaa !5
  %1334 = icmp eq i8 %1333, 116
  br i1 %1334, label %3947, label %3939

1335:                                             ; preds = %1187
  %1336 = getelementptr inbounds i8, ptr %0, i64 1
  %1337 = load i8, ptr %1336, align 1, !tbaa !5
  %1338 = icmp eq i8 %1337, 109
  br i1 %1338, label %1339, label %3939

1339:                                             ; preds = %1335
  %1340 = getelementptr inbounds i8, ptr %0, i64 2
  %1341 = load i8, ptr %1340, align 1, !tbaa !5
  %1342 = icmp eq i8 %1341, 116
  br i1 %1342, label %1343, label %3939

1343:                                             ; preds = %1339
  %1344 = getelementptr inbounds i8, ptr %0, i64 3
  %1345 = load i8, ptr %1344, align 1, !tbaa !5
  %1346 = icmp eq i8 %1345, 105
  br i1 %1346, label %1347, label %3939

1347:                                             ; preds = %1343
  %1348 = getelementptr inbounds i8, ptr %0, i64 4
  %1349 = load i8, ptr %1348, align 1, !tbaa !5
  %1350 = icmp eq i8 %1349, 109
  br i1 %1350, label %1351, label %3939

1351:                                             ; preds = %1347
  %1352 = getelementptr inbounds i8, ptr %0, i64 5
  %1353 = load i8, ptr %1352, align 1, !tbaa !5
  %1354 = icmp eq i8 %1353, 101
  br i1 %1354, label %3947, label %3939

1355:                                             ; preds = %1187
  %1356 = getelementptr inbounds i8, ptr %0, i64 1
  %1357 = load i8, ptr %1356, align 1, !tbaa !5
  switch i8 %1357, label %3939 [
    i8 101, label %1358
    i8 105, label %1374
  ]

1358:                                             ; preds = %1355
  %1359 = getelementptr inbounds i8, ptr %0, i64 2
  %1360 = load i8, ptr %1359, align 1, !tbaa !5
  %1361 = icmp eq i8 %1360, 110
  br i1 %1361, label %1362, label %3939

1362:                                             ; preds = %1358
  %1363 = getelementptr inbounds i8, ptr %0, i64 3
  %1364 = load i8, ptr %1363, align 1, !tbaa !5
  %1365 = icmp eq i8 %1364, 103
  br i1 %1365, label %1366, label %3939

1366:                                             ; preds = %1362
  %1367 = getelementptr inbounds i8, ptr %0, i64 4
  %1368 = load i8, ptr %1367, align 1, !tbaa !5
  %1369 = icmp eq i8 %1368, 116
  br i1 %1369, label %1370, label %3939

1370:                                             ; preds = %1366
  %1371 = getelementptr inbounds i8, ptr %0, i64 5
  %1372 = load i8, ptr %1371, align 1, !tbaa !5
  %1373 = icmp eq i8 %1372, 104
  br i1 %1373, label %3947, label %3939

1374:                                             ; preds = %1355
  %1375 = getelementptr inbounds i8, ptr %0, i64 2
  %1376 = load i8, ptr %1375, align 1, !tbaa !5
  %1377 = icmp eq i8 %1376, 115
  br i1 %1377, label %1378, label %3939

1378:                                             ; preds = %1374
  %1379 = getelementptr inbounds i8, ptr %0, i64 3
  %1380 = load i8, ptr %1379, align 1, !tbaa !5
  %1381 = icmp eq i8 %1380, 116
  br i1 %1381, label %1382, label %3939

1382:                                             ; preds = %1378
  %1383 = getelementptr inbounds i8, ptr %0, i64 4
  %1384 = load i8, ptr %1383, align 1, !tbaa !5
  %1385 = icmp eq i8 %1384, 101
  br i1 %1385, label %1386, label %3939

1386:                                             ; preds = %1382
  %1387 = getelementptr inbounds i8, ptr %0, i64 5
  %1388 = load i8, ptr %1387, align 1, !tbaa !5
  %1389 = icmp eq i8 %1388, 110
  br i1 %1389, label %3947, label %3939

1390:                                             ; preds = %1187
  %1391 = getelementptr inbounds i8, ptr %0, i64 1
  %1392 = load i8, ptr %1391, align 1, !tbaa !5
  %1393 = icmp eq i8 %1392, 115
  br i1 %1393, label %1394, label %3939

1394:                                             ; preds = %1390
  %1395 = getelementptr inbounds i8, ptr %0, i64 2
  %1396 = load i8, ptr %1395, align 1, !tbaa !5
  %1397 = icmp eq i8 %1396, 103
  br i1 %1397, label %1398, label %3939

1398:                                             ; preds = %1394
  %1399 = getelementptr inbounds i8, ptr %0, i64 3
  %1400 = load i8, ptr %1399, align 1, !tbaa !5
  switch i8 %1400, label %3939 [
    i8 99, label %1401
    i8 103, label %1409
    i8 114, label %1417
    i8 115, label %1425
  ]

1401:                                             ; preds = %1398
  %1402 = getelementptr inbounds i8, ptr %0, i64 4
  %1403 = load i8, ptr %1402, align 1, !tbaa !5
  %1404 = icmp eq i8 %1403, 116
  br i1 %1404, label %1405, label %3939

1405:                                             ; preds = %1401
  %1406 = getelementptr inbounds i8, ptr %0, i64 5
  %1407 = load i8, ptr %1406, align 1, !tbaa !5
  %1408 = icmp eq i8 %1407, 108
  br i1 %1408, label %3947, label %3939

1409:                                             ; preds = %1398
  %1410 = getelementptr inbounds i8, ptr %0, i64 4
  %1411 = load i8, ptr %1410, align 1, !tbaa !5
  %1412 = icmp eq i8 %1411, 101
  br i1 %1412, label %1413, label %3939

1413:                                             ; preds = %1409
  %1414 = getelementptr inbounds i8, ptr %0, i64 5
  %1415 = load i8, ptr %1414, align 1, !tbaa !5
  %1416 = icmp eq i8 %1415, 116
  br i1 %1416, label %3947, label %3939

1417:                                             ; preds = %1398
  %1418 = getelementptr inbounds i8, ptr %0, i64 4
  %1419 = load i8, ptr %1418, align 1, !tbaa !5
  %1420 = icmp eq i8 %1419, 99
  br i1 %1420, label %1421, label %3939

1421:                                             ; preds = %1417
  %1422 = getelementptr inbounds i8, ptr %0, i64 5
  %1423 = load i8, ptr %1422, align 1, !tbaa !5
  %1424 = icmp eq i8 %1423, 118
  br i1 %1424, label %3947, label %3939

1425:                                             ; preds = %1398
  %1426 = getelementptr inbounds i8, ptr %0, i64 4
  %1427 = load i8, ptr %1426, align 1, !tbaa !5
  %1428 = icmp eq i8 %1427, 110
  br i1 %1428, label %1429, label %3939

1429:                                             ; preds = %1425
  %1430 = getelementptr inbounds i8, ptr %0, i64 5
  %1431 = load i8, ptr %1430, align 1, !tbaa !5
  %1432 = icmp eq i8 %1431, 100
  br i1 %1432, label %3947, label %3939

1433:                                             ; preds = %1187
  %1434 = getelementptr inbounds i8, ptr %0, i64 1
  %1435 = load i8, ptr %1434, align 1, !tbaa !5
  %1436 = icmp eq i8 %1435, 114
  br i1 %1436, label %1437, label %3939

1437:                                             ; preds = %1433
  %1438 = getelementptr inbounds i8, ptr %0, i64 2
  %1439 = load i8, ptr %1438, align 1, !tbaa !5
  %1440 = icmp eq i8 %1439, 105
  br i1 %1440, label %1441, label %3939

1441:                                             ; preds = %1437
  %1442 = getelementptr inbounds i8, ptr %0, i64 3
  %1443 = load i8, ptr %1442, align 1, !tbaa !5
  %1444 = icmp eq i8 %1443, 110
  br i1 %1444, label %1445, label %3939

1445:                                             ; preds = %1441
  %1446 = getelementptr inbounds i8, ptr %0, i64 4
  %1447 = load i8, ptr %1446, align 1, !tbaa !5
  %1448 = icmp eq i8 %1447, 116
  br i1 %1448, label %1449, label %3939

1449:                                             ; preds = %1445
  %1450 = getelementptr inbounds i8, ptr %0, i64 5
  %1451 = load i8, ptr %1450, align 1, !tbaa !5
  %1452 = icmp eq i8 %1451, 102
  br i1 %1452, label %3947, label %3939

1453:                                             ; preds = %1187
  %1454 = getelementptr inbounds i8, ptr %0, i64 1
  %1455 = load i8, ptr %1454, align 1, !tbaa !5
  switch i8 %1455, label %3939 [
    i8 101, label %1456
    i8 105, label %1483
  ]

1456:                                             ; preds = %1453
  %1457 = getelementptr inbounds i8, ptr %0, i64 2
  %1458 = load i8, ptr %1457, align 1, !tbaa !5
  switch i8 %1458, label %3939 [
    i8 110, label %1459
    i8 116, label %1471
  ]

1459:                                             ; preds = %1456
  %1460 = getelementptr inbounds i8, ptr %0, i64 3
  %1461 = load i8, ptr %1460, align 1, !tbaa !5
  %1462 = icmp eq i8 %1461, 97
  br i1 %1462, label %1463, label %3939

1463:                                             ; preds = %1459
  %1464 = getelementptr inbounds i8, ptr %0, i64 4
  %1465 = load i8, ptr %1464, align 1, !tbaa !5
  %1466 = icmp eq i8 %1465, 109
  br i1 %1466, label %1467, label %3939

1467:                                             ; preds = %1463
  %1468 = getelementptr inbounds i8, ptr %0, i64 5
  %1469 = load i8, ptr %1468, align 1, !tbaa !5
  %1470 = icmp eq i8 %1469, 101
  br i1 %1470, label %3947, label %3939

1471:                                             ; preds = %1456
  %1472 = getelementptr inbounds i8, ptr %0, i64 3
  %1473 = load i8, ptr %1472, align 1, !tbaa !5
  %1474 = icmp eq i8 %1473, 117
  br i1 %1474, label %1475, label %3939

1475:                                             ; preds = %1471
  %1476 = getelementptr inbounds i8, ptr %0, i64 4
  %1477 = load i8, ptr %1476, align 1, !tbaa !5
  %1478 = icmp eq i8 %1477, 114
  br i1 %1478, label %1479, label %3939

1479:                                             ; preds = %1475
  %1480 = getelementptr inbounds i8, ptr %0, i64 5
  %1481 = load i8, ptr %1480, align 1, !tbaa !5
  %1482 = icmp eq i8 %1481, 110
  br i1 %1482, label %3947, label %3939

1483:                                             ; preds = %1453
  %1484 = getelementptr inbounds i8, ptr %0, i64 2
  %1485 = load i8, ptr %1484, align 1, !tbaa !5
  %1486 = icmp eq i8 %1485, 110
  br i1 %1486, label %1487, label %3939

1487:                                             ; preds = %1483
  %1488 = getelementptr inbounds i8, ptr %0, i64 3
  %1489 = load i8, ptr %1488, align 1, !tbaa !5
  %1490 = icmp eq i8 %1489, 100
  br i1 %1490, label %1491, label %3939

1491:                                             ; preds = %1487
  %1492 = getelementptr inbounds i8, ptr %0, i64 4
  %1493 = load i8, ptr %1492, align 1, !tbaa !5
  %1494 = icmp eq i8 %1493, 101
  br i1 %1494, label %1495, label %3939

1495:                                             ; preds = %1491
  %1496 = getelementptr inbounds i8, ptr %0, i64 5
  %1497 = load i8, ptr %1496, align 1, !tbaa !5
  %1498 = icmp eq i8 %1497, 120
  br i1 %1498, label %3947, label %3939

1499:                                             ; preds = %1187
  %1500 = getelementptr inbounds i8, ptr %0, i64 1
  %1501 = load i8, ptr %1500, align 1, !tbaa !5
  switch i8 %1501, label %3939 [
    i8 99, label %1502
    i8 101, label %1518
    i8 104, label %1552
    i8 111, label %1575
    i8 112, label %1591
    i8 117, label %1607
    i8 121, label %1623
  ]

1502:                                             ; preds = %1499
  %1503 = getelementptr inbounds i8, ptr %0, i64 2
  %1504 = load i8, ptr %1503, align 1, !tbaa !5
  %1505 = icmp eq i8 %1504, 97
  br i1 %1505, label %1506, label %3939

1506:                                             ; preds = %1502
  %1507 = getelementptr inbounds i8, ptr %0, i64 3
  %1508 = load i8, ptr %1507, align 1, !tbaa !5
  %1509 = icmp eq i8 %1508, 108
  br i1 %1509, label %1510, label %3939

1510:                                             ; preds = %1506
  %1511 = getelementptr inbounds i8, ptr %0, i64 4
  %1512 = load i8, ptr %1511, align 1, !tbaa !5
  %1513 = icmp eq i8 %1512, 97
  br i1 %1513, label %1514, label %3939

1514:                                             ; preds = %1510
  %1515 = getelementptr inbounds i8, ptr %0, i64 5
  %1516 = load i8, ptr %1515, align 1, !tbaa !5
  %1517 = icmp eq i8 %1516, 114
  br i1 %1517, label %3947, label %3939

1518:                                             ; preds = %1499
  %1519 = getelementptr inbounds i8, ptr %0, i64 2
  %1520 = load i8, ptr %1519, align 1, !tbaa !5
  switch i8 %1520, label %3939 [
    i8 108, label %1521
    i8 109, label %1533
  ]

1521:                                             ; preds = %1518
  %1522 = getelementptr inbounds i8, ptr %0, i64 3
  %1523 = load i8, ptr %1522, align 1, !tbaa !5
  %1524 = icmp eq i8 %1523, 101
  br i1 %1524, label %1525, label %3939

1525:                                             ; preds = %1521
  %1526 = getelementptr inbounds i8, ptr %0, i64 4
  %1527 = load i8, ptr %1526, align 1, !tbaa !5
  %1528 = icmp eq i8 %1527, 99
  br i1 %1528, label %1529, label %3939

1529:                                             ; preds = %1525
  %1530 = getelementptr inbounds i8, ptr %0, i64 5
  %1531 = load i8, ptr %1530, align 1, !tbaa !5
  %1532 = icmp eq i8 %1531, 116
  br i1 %1532, label %3947, label %3939

1533:                                             ; preds = %1518
  %1534 = getelementptr inbounds i8, ptr %0, i64 3
  %1535 = load i8, ptr %1534, align 1, !tbaa !5
  switch i8 %1535, label %3939 [
    i8 99, label %1536
    i8 103, label %1544
  ]

1536:                                             ; preds = %1533
  %1537 = getelementptr inbounds i8, ptr %0, i64 4
  %1538 = load i8, ptr %1537, align 1, !tbaa !5
  %1539 = icmp eq i8 %1538, 116
  br i1 %1539, label %1540, label %3939

1540:                                             ; preds = %1536
  %1541 = getelementptr inbounds i8, ptr %0, i64 5
  %1542 = load i8, ptr %1541, align 1, !tbaa !5
  %1543 = icmp eq i8 %1542, 108
  br i1 %1543, label %3947, label %3939

1544:                                             ; preds = %1533
  %1545 = getelementptr inbounds i8, ptr %0, i64 4
  %1546 = load i8, ptr %1545, align 1, !tbaa !5
  %1547 = icmp eq i8 %1546, 101
  br i1 %1547, label %1548, label %3939

1548:                                             ; preds = %1544
  %1549 = getelementptr inbounds i8, ptr %0, i64 5
  %1550 = load i8, ptr %1549, align 1, !tbaa !5
  %1551 = icmp eq i8 %1550, 116
  br i1 %1551, label %3947, label %3939

1552:                                             ; preds = %1499
  %1553 = getelementptr inbounds i8, ptr %0, i64 2
  %1554 = load i8, ptr %1553, align 1, !tbaa !5
  %1555 = icmp eq i8 %1554, 109
  br i1 %1555, label %1556, label %3939

1556:                                             ; preds = %1552
  %1557 = getelementptr inbounds i8, ptr %0, i64 3
  %1558 = load i8, ptr %1557, align 1, !tbaa !5
  switch i8 %1558, label %3939 [
    i8 99, label %1559
    i8 103, label %1567
  ]

1559:                                             ; preds = %1556
  %1560 = getelementptr inbounds i8, ptr %0, i64 4
  %1561 = load i8, ptr %1560, align 1, !tbaa !5
  %1562 = icmp eq i8 %1561, 116
  br i1 %1562, label %1563, label %3939

1563:                                             ; preds = %1559
  %1564 = getelementptr inbounds i8, ptr %0, i64 5
  %1565 = load i8, ptr %1564, align 1, !tbaa !5
  %1566 = icmp eq i8 %1565, 108
  br i1 %1566, label %3947, label %3939

1567:                                             ; preds = %1556
  %1568 = getelementptr inbounds i8, ptr %0, i64 4
  %1569 = load i8, ptr %1568, align 1, !tbaa !5
  %1570 = icmp eq i8 %1569, 101
  br i1 %1570, label %1571, label %3939

1571:                                             ; preds = %1567
  %1572 = getelementptr inbounds i8, ptr %0, i64 5
  %1573 = load i8, ptr %1572, align 1, !tbaa !5
  %1574 = icmp eq i8 %1573, 116
  br i1 %1574, label %3947, label %3939

1575:                                             ; preds = %1499
  %1576 = getelementptr inbounds i8, ptr %0, i64 2
  %1577 = load i8, ptr %1576, align 1, !tbaa !5
  %1578 = icmp eq i8 %1577, 99
  br i1 %1578, label %1579, label %3939

1579:                                             ; preds = %1575
  %1580 = getelementptr inbounds i8, ptr %0, i64 3
  %1581 = load i8, ptr %1580, align 1, !tbaa !5
  %1582 = icmp eq i8 %1581, 107
  br i1 %1582, label %1583, label %3939

1583:                                             ; preds = %1579
  %1584 = getelementptr inbounds i8, ptr %0, i64 4
  %1585 = load i8, ptr %1584, align 1, !tbaa !5
  %1586 = icmp eq i8 %1585, 101
  br i1 %1586, label %1587, label %3939

1587:                                             ; preds = %1583
  %1588 = getelementptr inbounds i8, ptr %0, i64 5
  %1589 = load i8, ptr %1588, align 1, !tbaa !5
  %1590 = icmp eq i8 %1589, 116
  br i1 %1590, label %3947, label %3939

1591:                                             ; preds = %1499
  %1592 = getelementptr inbounds i8, ptr %0, i64 2
  %1593 = load i8, ptr %1592, align 1, !tbaa !5
  %1594 = icmp eq i8 %1593, 108
  br i1 %1594, label %1595, label %3939

1595:                                             ; preds = %1591
  %1596 = getelementptr inbounds i8, ptr %0, i64 3
  %1597 = load i8, ptr %1596, align 1, !tbaa !5
  %1598 = icmp eq i8 %1597, 105
  br i1 %1598, label %1599, label %3939

1599:                                             ; preds = %1595
  %1600 = getelementptr inbounds i8, ptr %0, i64 4
  %1601 = load i8, ptr %1600, align 1, !tbaa !5
  %1602 = icmp eq i8 %1601, 99
  br i1 %1602, label %1603, label %3939

1603:                                             ; preds = %1599
  %1604 = getelementptr inbounds i8, ptr %0, i64 5
  %1605 = load i8, ptr %1604, align 1, !tbaa !5
  %1606 = icmp eq i8 %1605, 101
  br i1 %1606, label %3947, label %3939

1607:                                             ; preds = %1499
  %1608 = getelementptr inbounds i8, ptr %0, i64 2
  %1609 = load i8, ptr %1608, align 1, !tbaa !5
  %1610 = icmp eq i8 %1609, 98
  br i1 %1610, label %1611, label %3939

1611:                                             ; preds = %1607
  %1612 = getelementptr inbounds i8, ptr %0, i64 3
  %1613 = load i8, ptr %1612, align 1, !tbaa !5
  %1614 = icmp eq i8 %1613, 115
  br i1 %1614, label %1615, label %3939

1615:                                             ; preds = %1611
  %1616 = getelementptr inbounds i8, ptr %0, i64 4
  %1617 = load i8, ptr %1616, align 1, !tbaa !5
  %1618 = icmp eq i8 %1617, 116
  br i1 %1618, label %1619, label %3939

1619:                                             ; preds = %1615
  %1620 = getelementptr inbounds i8, ptr %0, i64 5
  %1621 = load i8, ptr %1620, align 1, !tbaa !5
  %1622 = icmp eq i8 %1621, 114
  br i1 %1622, label %3947, label %3939

1623:                                             ; preds = %1499
  %1624 = getelementptr inbounds i8, ptr %0, i64 2
  %1625 = load i8, ptr %1624, align 1, !tbaa !5
  %1626 = icmp eq i8 %1625, 115
  br i1 %1626, label %1627, label %3939

1627:                                             ; preds = %1623
  %1628 = getelementptr inbounds i8, ptr %0, i64 3
  %1629 = load i8, ptr %1628, align 1, !tbaa !5
  %1630 = icmp eq i8 %1629, 116
  br i1 %1630, label %1631, label %3939

1631:                                             ; preds = %1627
  %1632 = getelementptr inbounds i8, ptr %0, i64 4
  %1633 = load i8, ptr %1632, align 1, !tbaa !5
  %1634 = icmp eq i8 %1633, 101
  br i1 %1634, label %1635, label %3939

1635:                                             ; preds = %1631
  %1636 = getelementptr inbounds i8, ptr %0, i64 5
  %1637 = load i8, ptr %1636, align 1, !tbaa !5
  %1638 = icmp eq i8 %1637, 109
  br i1 %1638, label %3947, label %3939

1639:                                             ; preds = %1187
  %1640 = getelementptr inbounds i8, ptr %0, i64 1
  %1641 = load i8, ptr %1640, align 1, !tbaa !5
  %1642 = icmp eq i8 %1641, 110
  br i1 %1642, label %1643, label %3939

1643:                                             ; preds = %1639
  %1644 = getelementptr inbounds i8, ptr %0, i64 2
  %1645 = load i8, ptr %1644, align 1, !tbaa !5
  switch i8 %1645, label %3939 [
    i8 108, label %1646
    i8 112, label %1665
  ]

1646:                                             ; preds = %1643
  %1647 = getelementptr inbounds i8, ptr %0, i64 3
  %1648 = load i8, ptr %1647, align 1, !tbaa !5
  switch i8 %1648, label %3939 [
    i8 101, label %1649
    i8 105, label %1657
  ]

1649:                                             ; preds = %1646
  %1650 = getelementptr inbounds i8, ptr %0, i64 4
  %1651 = load i8, ptr %1650, align 1, !tbaa !5
  %1652 = icmp eq i8 %1651, 115
  br i1 %1652, label %1653, label %3939

1653:                                             ; preds = %1649
  %1654 = getelementptr inbounds i8, ptr %0, i64 5
  %1655 = load i8, ptr %1654, align 1, !tbaa !5
  %1656 = icmp eq i8 %1655, 115
  br i1 %1656, label %3947, label %3939

1657:                                             ; preds = %1646
  %1658 = getelementptr inbounds i8, ptr %0, i64 4
  %1659 = load i8, ptr %1658, align 1, !tbaa !5
  %1660 = icmp eq i8 %1659, 110
  br i1 %1660, label %1661, label %3939

1661:                                             ; preds = %1657
  %1662 = getelementptr inbounds i8, ptr %0, i64 5
  %1663 = load i8, ptr %1662, align 1, !tbaa !5
  %1664 = icmp eq i8 %1663, 107
  br i1 %1664, label %3947, label %3939

1665:                                             ; preds = %1643
  %1666 = getelementptr inbounds i8, ptr %0, i64 3
  %1667 = load i8, ptr %1666, align 1, !tbaa !5
  %1668 = icmp eq i8 %1667, 97
  br i1 %1668, label %1669, label %3939

1669:                                             ; preds = %1665
  %1670 = getelementptr inbounds i8, ptr %0, i64 4
  %1671 = load i8, ptr %1670, align 1, !tbaa !5
  %1672 = icmp eq i8 %1671, 99
  br i1 %1672, label %1673, label %3939

1673:                                             ; preds = %1669
  %1674 = getelementptr inbounds i8, ptr %0, i64 5
  %1675 = load i8, ptr %1674, align 1, !tbaa !5
  %1676 = icmp eq i8 %1675, 107
  br i1 %1676, label %3947, label %3939

1677:                                             ; preds = %1187
  %1678 = getelementptr inbounds i8, ptr %0, i64 1
  %1679 = load i8, ptr %1678, align 1, !tbaa !5
  %1680 = icmp eq i8 %1679, 97
  br i1 %1680, label %1681, label %3939

1681:                                             ; preds = %1677
  %1682 = getelementptr inbounds i8, ptr %0, i64 2
  %1683 = load i8, ptr %1682, align 1, !tbaa !5
  %1684 = icmp eq i8 %1683, 108
  br i1 %1684, label %1685, label %3939

1685:                                             ; preds = %1681
  %1686 = getelementptr inbounds i8, ptr %0, i64 3
  %1687 = load i8, ptr %1686, align 1, !tbaa !5
  %1688 = icmp eq i8 %1687, 117
  br i1 %1688, label %1689, label %3939

1689:                                             ; preds = %1685
  %1690 = getelementptr inbounds i8, ptr %0, i64 4
  %1691 = load i8, ptr %1690, align 1, !tbaa !5
  %1692 = icmp eq i8 %1691, 101
  br i1 %1692, label %1693, label %3939

1693:                                             ; preds = %1689
  %1694 = getelementptr inbounds i8, ptr %0, i64 5
  %1695 = load i8, ptr %1694, align 1, !tbaa !5
  %1696 = icmp eq i8 %1695, 115
  br i1 %1696, label %3947, label %3939

1697:                                             ; preds = %3
  %1698 = load i8, ptr %0, align 1, !tbaa !5
  switch i8 %1698, label %3939 [
    i8 68, label %1699
    i8 95, label %1723
    i8 98, label %1774
    i8 99, label %1798
    i8 100, label %1822
    i8 102, label %1892
    i8 103, label %1916
    i8 108, label %1947
    i8 111, label %1971
    i8 112, label %1995
    i8 114, label %2019
    i8 115, label %2074
    i8 116, label %2222
    i8 117, label %2246
    i8 119, label %2289
  ]

1699:                                             ; preds = %1697
  %1700 = getelementptr inbounds i8, ptr %0, i64 1
  %1701 = load i8, ptr %1700, align 1, !tbaa !5
  %1702 = icmp eq i8 %1701, 69
  br i1 %1702, label %1703, label %3939

1703:                                             ; preds = %1699
  %1704 = getelementptr inbounds i8, ptr %0, i64 2
  %1705 = load i8, ptr %1704, align 1, !tbaa !5
  %1706 = icmp eq i8 %1705, 83
  br i1 %1706, label %1707, label %3939

1707:                                             ; preds = %1703
  %1708 = getelementptr inbounds i8, ptr %0, i64 3
  %1709 = load i8, ptr %1708, align 1, !tbaa !5
  %1710 = icmp eq i8 %1709, 84
  br i1 %1710, label %1711, label %3939

1711:                                             ; preds = %1707
  %1712 = getelementptr inbounds i8, ptr %0, i64 4
  %1713 = load i8, ptr %1712, align 1, !tbaa !5
  %1714 = icmp eq i8 %1713, 82
  br i1 %1714, label %1715, label %3939

1715:                                             ; preds = %1711
  %1716 = getelementptr inbounds i8, ptr %0, i64 5
  %1717 = load i8, ptr %1716, align 1, !tbaa !5
  %1718 = icmp eq i8 %1717, 79
  br i1 %1718, label %1719, label %3939

1719:                                             ; preds = %1715
  %1720 = getelementptr inbounds i8, ptr %0, i64 6
  %1721 = load i8, ptr %1720, align 1, !tbaa !5
  %1722 = icmp eq i8 %1721, 89
  br i1 %1722, label %3947, label %3939

1723:                                             ; preds = %1697
  %1724 = getelementptr inbounds i8, ptr %0, i64 1
  %1725 = load i8, ptr %1724, align 1, !tbaa !5
  %1726 = icmp eq i8 %1725, 95
  br i1 %1726, label %1727, label %3939

1727:                                             ; preds = %1723
  %1728 = getelementptr inbounds i8, ptr %0, i64 2
  %1729 = load i8, ptr %1728, align 1, !tbaa !5
  switch i8 %1729, label %3939 [
    i8 69, label %1730
    i8 83, label %1746
  ]

1730:                                             ; preds = %1727
  %1731 = getelementptr inbounds i8, ptr %0, i64 3
  %1732 = load i8, ptr %1731, align 1, !tbaa !5
  %1733 = icmp eq i8 %1732, 78
  br i1 %1733, label %1734, label %3939

1734:                                             ; preds = %1730
  %1735 = getelementptr inbounds i8, ptr %0, i64 4
  %1736 = load i8, ptr %1735, align 1, !tbaa !5
  %1737 = icmp eq i8 %1736, 68
  br i1 %1737, label %1738, label %3939

1738:                                             ; preds = %1734
  %1739 = getelementptr inbounds i8, ptr %0, i64 5
  %1740 = load i8, ptr %1739, align 1, !tbaa !5
  %1741 = icmp eq i8 %1740, 95
  br i1 %1741, label %1742, label %3939

1742:                                             ; preds = %1738
  %1743 = getelementptr inbounds i8, ptr %0, i64 6
  %1744 = load i8, ptr %1743, align 1, !tbaa !5
  %1745 = icmp eq i8 %1744, 95
  br i1 %1745, label %3947, label %3939

1746:                                             ; preds = %1727
  %1747 = getelementptr inbounds i8, ptr %0, i64 3
  %1748 = load i8, ptr %1747, align 1, !tbaa !5
  %1749 = icmp eq i8 %1748, 85
  br i1 %1749, label %1750, label %3939

1750:                                             ; preds = %1746
  %1751 = getelementptr inbounds i8, ptr %0, i64 4
  %1752 = load i8, ptr %1751, align 1, !tbaa !5
  %1753 = icmp eq i8 %1752, 66
  br i1 %1753, label %1754, label %3939

1754:                                             ; preds = %1750
  %1755 = getelementptr inbounds i8, ptr %0, i64 5
  %1756 = load i8, ptr %1755, align 1, !tbaa !5
  %1757 = icmp eq i8 %1756, 95
  br i1 %1757, label %1758, label %3939

1758:                                             ; preds = %1754
  %1759 = getelementptr inbounds i8, ptr %0, i64 6
  %1760 = load i8, ptr %1759, align 1, !tbaa !5
  %1761 = icmp eq i8 %1760, 95
  br i1 %1761, label %1762, label %3939

1762:                                             ; preds = %1758
  br i1 %2, label %3947, label %1763

1763:                                             ; preds = %1762
  %1764 = load ptr, ptr @PL_curcop, align 8, !tbaa !8
  %1765 = getelementptr %struct.cop, ptr %1764, i64 0, i32 10
  %1766 = load i32, ptr %1765, align 8, !tbaa !10
  %1767 = and i32 %1766, 469762048
  switch i32 %1767, label %3941 [
    i32 201326592, label %3947
    i32 469762048, label %1768
  ]

1768:                                             ; preds = %1763
  %1769 = and i32 %1766, 131072
  %1770 = icmp eq i32 %1769, 0
  br i1 %1770, label %3947, label %1771

1771:                                             ; preds = %1768
  %1772 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.5, i64 noundef 7) #2
  %1773 = select i1 %1772, i32 -6, i32 0
  br label %3947

1774:                                             ; preds = %1697
  %1775 = getelementptr inbounds i8, ptr %0, i64 1
  %1776 = load i8, ptr %1775, align 1, !tbaa !5
  %1777 = icmp eq i8 %1776, 105
  br i1 %1777, label %1778, label %3939

1778:                                             ; preds = %1774
  %1779 = getelementptr inbounds i8, ptr %0, i64 2
  %1780 = load i8, ptr %1779, align 1, !tbaa !5
  %1781 = icmp eq i8 %1780, 110
  br i1 %1781, label %1782, label %3939

1782:                                             ; preds = %1778
  %1783 = getelementptr inbounds i8, ptr %0, i64 3
  %1784 = load i8, ptr %1783, align 1, !tbaa !5
  %1785 = icmp eq i8 %1784, 109
  br i1 %1785, label %1786, label %3939

1786:                                             ; preds = %1782
  %1787 = getelementptr inbounds i8, ptr %0, i64 4
  %1788 = load i8, ptr %1787, align 1, !tbaa !5
  %1789 = icmp eq i8 %1788, 111
  br i1 %1789, label %1790, label %3939

1790:                                             ; preds = %1786
  %1791 = getelementptr inbounds i8, ptr %0, i64 5
  %1792 = load i8, ptr %1791, align 1, !tbaa !5
  %1793 = icmp eq i8 %1792, 100
  br i1 %1793, label %1794, label %3939

1794:                                             ; preds = %1790
  %1795 = getelementptr inbounds i8, ptr %0, i64 6
  %1796 = load i8, ptr %1795, align 1, !tbaa !5
  %1797 = icmp eq i8 %1796, 101
  br i1 %1797, label %3947, label %3939

1798:                                             ; preds = %1697
  %1799 = getelementptr inbounds i8, ptr %0, i64 1
  %1800 = load i8, ptr %1799, align 1, !tbaa !5
  %1801 = icmp eq i8 %1800, 111
  br i1 %1801, label %1802, label %3939

1802:                                             ; preds = %1798
  %1803 = getelementptr inbounds i8, ptr %0, i64 2
  %1804 = load i8, ptr %1803, align 1, !tbaa !5
  %1805 = icmp eq i8 %1804, 110
  br i1 %1805, label %1806, label %3939

1806:                                             ; preds = %1802
  %1807 = getelementptr inbounds i8, ptr %0, i64 3
  %1808 = load i8, ptr %1807, align 1, !tbaa !5
  %1809 = icmp eq i8 %1808, 110
  br i1 %1809, label %1810, label %3939

1810:                                             ; preds = %1806
  %1811 = getelementptr inbounds i8, ptr %0, i64 4
  %1812 = load i8, ptr %1811, align 1, !tbaa !5
  %1813 = icmp eq i8 %1812, 101
  br i1 %1813, label %1814, label %3939

1814:                                             ; preds = %1810
  %1815 = getelementptr inbounds i8, ptr %0, i64 5
  %1816 = load i8, ptr %1815, align 1, !tbaa !5
  %1817 = icmp eq i8 %1816, 99
  br i1 %1817, label %1818, label %3939

1818:                                             ; preds = %1814
  %1819 = getelementptr inbounds i8, ptr %0, i64 6
  %1820 = load i8, ptr %1819, align 1, !tbaa !5
  %1821 = icmp eq i8 %1820, 116
  br i1 %1821, label %3947, label %3939

1822:                                             ; preds = %1697
  %1823 = getelementptr inbounds i8, ptr %0, i64 1
  %1824 = load i8, ptr %1823, align 1, !tbaa !5
  switch i8 %1824, label %3939 [
    i8 98, label %1825
    i8 101, label %1845
  ]

1825:                                             ; preds = %1822
  %1826 = getelementptr inbounds i8, ptr %0, i64 2
  %1827 = load i8, ptr %1826, align 1, !tbaa !5
  %1828 = icmp eq i8 %1827, 109
  br i1 %1828, label %1829, label %3939

1829:                                             ; preds = %1825
  %1830 = getelementptr inbounds i8, ptr %0, i64 3
  %1831 = load i8, ptr %1830, align 1, !tbaa !5
  %1832 = icmp eq i8 %1831, 111
  br i1 %1832, label %1833, label %3939

1833:                                             ; preds = %1829
  %1834 = getelementptr inbounds i8, ptr %0, i64 4
  %1835 = load i8, ptr %1834, align 1, !tbaa !5
  %1836 = icmp eq i8 %1835, 112
  br i1 %1836, label %1837, label %3939

1837:                                             ; preds = %1833
  %1838 = getelementptr inbounds i8, ptr %0, i64 5
  %1839 = load i8, ptr %1838, align 1, !tbaa !5
  %1840 = icmp eq i8 %1839, 101
  br i1 %1840, label %1841, label %3939

1841:                                             ; preds = %1837
  %1842 = getelementptr inbounds i8, ptr %0, i64 6
  %1843 = load i8, ptr %1842, align 1, !tbaa !5
  %1844 = icmp eq i8 %1843, 110
  br i1 %1844, label %3947, label %3939

1845:                                             ; preds = %1822
  %1846 = getelementptr inbounds i8, ptr %0, i64 2
  %1847 = load i8, ptr %1846, align 1, !tbaa !5
  %1848 = icmp eq i8 %1847, 102
  br i1 %1848, label %1849, label %3939

1849:                                             ; preds = %1845
  %1850 = getelementptr inbounds i8, ptr %0, i64 3
  %1851 = load i8, ptr %1850, align 1, !tbaa !5
  switch i8 %1851, label %3939 [
    i8 97, label %1852
    i8 105, label %1880
  ]

1852:                                             ; preds = %1849
  %1853 = getelementptr inbounds i8, ptr %0, i64 4
  %1854 = load i8, ptr %1853, align 1, !tbaa !5
  %1855 = icmp eq i8 %1854, 117
  br i1 %1855, label %1856, label %3939

1856:                                             ; preds = %1852
  %1857 = getelementptr inbounds i8, ptr %0, i64 5
  %1858 = load i8, ptr %1857, align 1, !tbaa !5
  %1859 = icmp eq i8 %1858, 108
  br i1 %1859, label %1860, label %3939

1860:                                             ; preds = %1856
  %1861 = getelementptr inbounds i8, ptr %0, i64 6
  %1862 = load i8, ptr %1861, align 1, !tbaa !5
  %1863 = icmp eq i8 %1862, 116
  br i1 %1863, label %1864, label %3939

1864:                                             ; preds = %1860
  br i1 %2, label %3947, label %1865

1865:                                             ; preds = %1864
  %1866 = load ptr, ptr @PL_curcop, align 8, !tbaa !8
  %1867 = getelementptr %struct.cop, ptr %1866, i64 0, i32 10
  %1868 = load i32, ptr %1867, align 8, !tbaa !10
  %1869 = and i32 %1868, 469762048
  %1870 = icmp eq i32 %1869, 0
  br i1 %1870, label %3947, label %1871

1871:                                             ; preds = %1865
  %1872 = and i32 %1868, 268435456
  %1873 = icmp eq i32 %1872, 0
  br i1 %1873, label %3947, label %1874

1874:                                             ; preds = %1871
  %1875 = and i32 %1868, 469893120
  %1876 = icmp eq i32 %1875, 469893120
  br i1 %1876, label %1877, label %3947

1877:                                             ; preds = %1874
  %1878 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.2, i64 noundef 6) #2
  %1879 = select i1 %1878, i32 40, i32 0
  br label %3947

1880:                                             ; preds = %1849
  %1881 = getelementptr inbounds i8, ptr %0, i64 4
  %1882 = load i8, ptr %1881, align 1, !tbaa !5
  %1883 = icmp eq i8 %1882, 110
  br i1 %1883, label %1884, label %3939

1884:                                             ; preds = %1880
  %1885 = getelementptr inbounds i8, ptr %0, i64 5
  %1886 = load i8, ptr %1885, align 1, !tbaa !5
  %1887 = icmp eq i8 %1886, 101
  br i1 %1887, label %1888, label %3939

1888:                                             ; preds = %1884
  %1889 = getelementptr inbounds i8, ptr %0, i64 6
  %1890 = load i8, ptr %1889, align 1, !tbaa !5
  %1891 = icmp eq i8 %1890, 100
  br i1 %1891, label %3947, label %3939

1892:                                             ; preds = %1697
  %1893 = getelementptr inbounds i8, ptr %0, i64 1
  %1894 = load i8, ptr %1893, align 1, !tbaa !5
  %1895 = icmp eq i8 %1894, 111
  br i1 %1895, label %1896, label %3939

1896:                                             ; preds = %1892
  %1897 = getelementptr inbounds i8, ptr %0, i64 2
  %1898 = load i8, ptr %1897, align 1, !tbaa !5
  %1899 = icmp eq i8 %1898, 114
  br i1 %1899, label %1900, label %3939

1900:                                             ; preds = %1896
  %1901 = getelementptr inbounds i8, ptr %0, i64 3
  %1902 = load i8, ptr %1901, align 1, !tbaa !5
  %1903 = icmp eq i8 %1902, 101
  br i1 %1903, label %1904, label %3939

1904:                                             ; preds = %1900
  %1905 = getelementptr inbounds i8, ptr %0, i64 4
  %1906 = load i8, ptr %1905, align 1, !tbaa !5
  %1907 = icmp eq i8 %1906, 97
  br i1 %1907, label %1908, label %3939

1908:                                             ; preds = %1904
  %1909 = getelementptr inbounds i8, ptr %0, i64 5
  %1910 = load i8, ptr %1909, align 1, !tbaa !5
  %1911 = icmp eq i8 %1910, 99
  br i1 %1911, label %1912, label %3939

1912:                                             ; preds = %1908
  %1913 = getelementptr inbounds i8, ptr %0, i64 6
  %1914 = load i8, ptr %1913, align 1, !tbaa !5
  %1915 = icmp eq i8 %1914, 104
  br i1 %1915, label %3947, label %3939

1916:                                             ; preds = %1697
  %1917 = getelementptr inbounds i8, ptr %0, i64 1
  %1918 = load i8, ptr %1917, align 1, !tbaa !5
  %1919 = icmp eq i8 %1918, 101
  br i1 %1919, label %1920, label %3939

1920:                                             ; preds = %1916
  %1921 = getelementptr inbounds i8, ptr %0, i64 2
  %1922 = load i8, ptr %1921, align 1, !tbaa !5
  %1923 = icmp eq i8 %1922, 116
  br i1 %1923, label %1924, label %3939

1924:                                             ; preds = %1920
  %1925 = getelementptr inbounds i8, ptr %0, i64 3
  %1926 = load i8, ptr %1925, align 1, !tbaa !5
  %1927 = icmp eq i8 %1926, 112
  br i1 %1927, label %1928, label %3939

1928:                                             ; preds = %1924
  %1929 = getelementptr inbounds i8, ptr %0, i64 4
  %1930 = load i8, ptr %1929, align 1, !tbaa !5
  switch i8 %1930, label %3939 [
    i8 103, label %1931
    i8 112, label %1939
  ]

1931:                                             ; preds = %1928
  %1932 = getelementptr inbounds i8, ptr %0, i64 5
  %1933 = load i8, ptr %1932, align 1, !tbaa !5
  %1934 = icmp eq i8 %1933, 114
  br i1 %1934, label %1935, label %3939

1935:                                             ; preds = %1931
  %1936 = getelementptr inbounds i8, ptr %0, i64 6
  %1937 = load i8, ptr %1936, align 1, !tbaa !5
  %1938 = icmp eq i8 %1937, 112
  br i1 %1938, label %3947, label %3939

1939:                                             ; preds = %1928
  %1940 = getelementptr inbounds i8, ptr %0, i64 5
  %1941 = load i8, ptr %1940, align 1, !tbaa !5
  %1942 = icmp eq i8 %1941, 105
  br i1 %1942, label %1943, label %3939

1943:                                             ; preds = %1939
  %1944 = getelementptr inbounds i8, ptr %0, i64 6
  %1945 = load i8, ptr %1944, align 1, !tbaa !5
  %1946 = icmp eq i8 %1945, 100
  br i1 %1946, label %3947, label %3939

1947:                                             ; preds = %1697
  %1948 = getelementptr inbounds i8, ptr %0, i64 1
  %1949 = load i8, ptr %1948, align 1, !tbaa !5
  %1950 = icmp eq i8 %1949, 99
  br i1 %1950, label %1951, label %3939

1951:                                             ; preds = %1947
  %1952 = getelementptr inbounds i8, ptr %0, i64 2
  %1953 = load i8, ptr %1952, align 1, !tbaa !5
  %1954 = icmp eq i8 %1953, 102
  br i1 %1954, label %1955, label %3939

1955:                                             ; preds = %1951
  %1956 = getelementptr inbounds i8, ptr %0, i64 3
  %1957 = load i8, ptr %1956, align 1, !tbaa !5
  %1958 = icmp eq i8 %1957, 105
  br i1 %1958, label %1959, label %3939

1959:                                             ; preds = %1955
  %1960 = getelementptr inbounds i8, ptr %0, i64 4
  %1961 = load i8, ptr %1960, align 1, !tbaa !5
  %1962 = icmp eq i8 %1961, 114
  br i1 %1962, label %1963, label %3939

1963:                                             ; preds = %1959
  %1964 = getelementptr inbounds i8, ptr %0, i64 5
  %1965 = load i8, ptr %1964, align 1, !tbaa !5
  %1966 = icmp eq i8 %1965, 115
  br i1 %1966, label %1967, label %3939

1967:                                             ; preds = %1963
  %1968 = getelementptr inbounds i8, ptr %0, i64 6
  %1969 = load i8, ptr %1968, align 1, !tbaa !5
  %1970 = icmp eq i8 %1969, 116
  br i1 %1970, label %3947, label %3939

1971:                                             ; preds = %1697
  %1972 = getelementptr inbounds i8, ptr %0, i64 1
  %1973 = load i8, ptr %1972, align 1, !tbaa !5
  %1974 = icmp eq i8 %1973, 112
  br i1 %1974, label %1975, label %3939

1975:                                             ; preds = %1971
  %1976 = getelementptr inbounds i8, ptr %0, i64 2
  %1977 = load i8, ptr %1976, align 1, !tbaa !5
  %1978 = icmp eq i8 %1977, 101
  br i1 %1978, label %1979, label %3939

1979:                                             ; preds = %1975
  %1980 = getelementptr inbounds i8, ptr %0, i64 3
  %1981 = load i8, ptr %1980, align 1, !tbaa !5
  %1982 = icmp eq i8 %1981, 110
  br i1 %1982, label %1983, label %3939

1983:                                             ; preds = %1979
  %1984 = getelementptr inbounds i8, ptr %0, i64 4
  %1985 = load i8, ptr %1984, align 1, !tbaa !5
  %1986 = icmp eq i8 %1985, 100
  br i1 %1986, label %1987, label %3939

1987:                                             ; preds = %1983
  %1988 = getelementptr inbounds i8, ptr %0, i64 5
  %1989 = load i8, ptr %1988, align 1, !tbaa !5
  %1990 = icmp eq i8 %1989, 105
  br i1 %1990, label %1991, label %3939

1991:                                             ; preds = %1987
  %1992 = getelementptr inbounds i8, ptr %0, i64 6
  %1993 = load i8, ptr %1992, align 1, !tbaa !5
  %1994 = icmp eq i8 %1993, 114
  br i1 %1994, label %3947, label %3939

1995:                                             ; preds = %1697
  %1996 = getelementptr inbounds i8, ptr %0, i64 1
  %1997 = load i8, ptr %1996, align 1, !tbaa !5
  %1998 = icmp eq i8 %1997, 97
  br i1 %1998, label %1999, label %3939

1999:                                             ; preds = %1995
  %2000 = getelementptr inbounds i8, ptr %0, i64 2
  %2001 = load i8, ptr %2000, align 1, !tbaa !5
  %2002 = icmp eq i8 %2001, 99
  br i1 %2002, label %2003, label %3939

2003:                                             ; preds = %1999
  %2004 = getelementptr inbounds i8, ptr %0, i64 3
  %2005 = load i8, ptr %2004, align 1, !tbaa !5
  %2006 = icmp eq i8 %2005, 107
  br i1 %2006, label %2007, label %3939

2007:                                             ; preds = %2003
  %2008 = getelementptr inbounds i8, ptr %0, i64 4
  %2009 = load i8, ptr %2008, align 1, !tbaa !5
  %2010 = icmp eq i8 %2009, 97
  br i1 %2010, label %2011, label %3939

2011:                                             ; preds = %2007
  %2012 = getelementptr inbounds i8, ptr %0, i64 5
  %2013 = load i8, ptr %2012, align 1, !tbaa !5
  %2014 = icmp eq i8 %2013, 103
  br i1 %2014, label %2015, label %3939

2015:                                             ; preds = %2011
  %2016 = getelementptr inbounds i8, ptr %0, i64 6
  %2017 = load i8, ptr %2016, align 1, !tbaa !5
  %2018 = icmp eq i8 %2017, 101
  br i1 %2018, label %3947, label %3939

2019:                                             ; preds = %1697
  %2020 = getelementptr inbounds i8, ptr %0, i64 1
  %2021 = load i8, ptr %2020, align 1, !tbaa !5
  %2022 = icmp eq i8 %2021, 101
  br i1 %2022, label %2023, label %3939

2023:                                             ; preds = %2019
  %2024 = getelementptr inbounds i8, ptr %0, i64 2
  %2025 = load i8, ptr %2024, align 1, !tbaa !5
  switch i8 %2025, label %3939 [
    i8 97, label %2026
    i8 113, label %2042
    i8 118, label %2058
  ]

2026:                                             ; preds = %2023
  %2027 = getelementptr inbounds i8, ptr %0, i64 3
  %2028 = load i8, ptr %2027, align 1, !tbaa !5
  %2029 = icmp eq i8 %2028, 100
  br i1 %2029, label %2030, label %3939

2030:                                             ; preds = %2026
  %2031 = getelementptr inbounds i8, ptr %0, i64 4
  %2032 = load i8, ptr %2031, align 1, !tbaa !5
  %2033 = icmp eq i8 %2032, 100
  br i1 %2033, label %2034, label %3939

2034:                                             ; preds = %2030
  %2035 = getelementptr inbounds i8, ptr %0, i64 5
  %2036 = load i8, ptr %2035, align 1, !tbaa !5
  %2037 = icmp eq i8 %2036, 105
  br i1 %2037, label %2038, label %3939

2038:                                             ; preds = %2034
  %2039 = getelementptr inbounds i8, ptr %0, i64 6
  %2040 = load i8, ptr %2039, align 1, !tbaa !5
  %2041 = icmp eq i8 %2040, 114
  br i1 %2041, label %3947, label %3939

2042:                                             ; preds = %2023
  %2043 = getelementptr inbounds i8, ptr %0, i64 3
  %2044 = load i8, ptr %2043, align 1, !tbaa !5
  %2045 = icmp eq i8 %2044, 117
  br i1 %2045, label %2046, label %3939

2046:                                             ; preds = %2042
  %2047 = getelementptr inbounds i8, ptr %0, i64 4
  %2048 = load i8, ptr %2047, align 1, !tbaa !5
  %2049 = icmp eq i8 %2048, 105
  br i1 %2049, label %2050, label %3939

2050:                                             ; preds = %2046
  %2051 = getelementptr inbounds i8, ptr %0, i64 5
  %2052 = load i8, ptr %2051, align 1, !tbaa !5
  %2053 = icmp eq i8 %2052, 114
  br i1 %2053, label %2054, label %3939

2054:                                             ; preds = %2050
  %2055 = getelementptr inbounds i8, ptr %0, i64 6
  %2056 = load i8, ptr %2055, align 1, !tbaa !5
  %2057 = icmp eq i8 %2056, 101
  br i1 %2057, label %3947, label %3939

2058:                                             ; preds = %2023
  %2059 = getelementptr inbounds i8, ptr %0, i64 3
  %2060 = load i8, ptr %2059, align 1, !tbaa !5
  %2061 = icmp eq i8 %2060, 101
  br i1 %2061, label %2062, label %3939

2062:                                             ; preds = %2058
  %2063 = getelementptr inbounds i8, ptr %0, i64 4
  %2064 = load i8, ptr %2063, align 1, !tbaa !5
  %2065 = icmp eq i8 %2064, 114
  br i1 %2065, label %2066, label %3939

2066:                                             ; preds = %2062
  %2067 = getelementptr inbounds i8, ptr %0, i64 5
  %2068 = load i8, ptr %2067, align 1, !tbaa !5
  %2069 = icmp eq i8 %2068, 115
  br i1 %2069, label %2070, label %3939

2070:                                             ; preds = %2066
  %2071 = getelementptr inbounds i8, ptr %0, i64 6
  %2072 = load i8, ptr %2071, align 1, !tbaa !5
  %2073 = icmp eq i8 %2072, 101
  br i1 %2073, label %3947, label %3939

2074:                                             ; preds = %1697
  %2075 = getelementptr inbounds i8, ptr %0, i64 1
  %2076 = load i8, ptr %2075, align 1, !tbaa !5
  switch i8 %2076, label %3939 [
    i8 101, label %2077
    i8 104, label %2112
    i8 112, label %2132
    i8 121, label %2152
  ]

2077:                                             ; preds = %2074
  %2078 = getelementptr inbounds i8, ptr %0, i64 2
  %2079 = load i8, ptr %2078, align 1, !tbaa !5
  switch i8 %2079, label %3939 [
    i8 101, label %2080
    i8 116, label %2096
  ]

2080:                                             ; preds = %2077
  %2081 = getelementptr inbounds i8, ptr %0, i64 3
  %2082 = load i8, ptr %2081, align 1, !tbaa !5
  %2083 = icmp eq i8 %2082, 107
  br i1 %2083, label %2084, label %3939

2084:                                             ; preds = %2080
  %2085 = getelementptr inbounds i8, ptr %0, i64 4
  %2086 = load i8, ptr %2085, align 1, !tbaa !5
  %2087 = icmp eq i8 %2086, 100
  br i1 %2087, label %2088, label %3939

2088:                                             ; preds = %2084
  %2089 = getelementptr inbounds i8, ptr %0, i64 5
  %2090 = load i8, ptr %2089, align 1, !tbaa !5
  %2091 = icmp eq i8 %2090, 105
  br i1 %2091, label %2092, label %3939

2092:                                             ; preds = %2088
  %2093 = getelementptr inbounds i8, ptr %0, i64 6
  %2094 = load i8, ptr %2093, align 1, !tbaa !5
  %2095 = icmp eq i8 %2094, 114
  br i1 %2095, label %3947, label %3939

2096:                                             ; preds = %2077
  %2097 = getelementptr inbounds i8, ptr %0, i64 3
  %2098 = load i8, ptr %2097, align 1, !tbaa !5
  %2099 = icmp eq i8 %2098, 112
  br i1 %2099, label %2100, label %3939

2100:                                             ; preds = %2096
  %2101 = getelementptr inbounds i8, ptr %0, i64 4
  %2102 = load i8, ptr %2101, align 1, !tbaa !5
  %2103 = icmp eq i8 %2102, 103
  br i1 %2103, label %2104, label %3939

2104:                                             ; preds = %2100
  %2105 = getelementptr inbounds i8, ptr %0, i64 5
  %2106 = load i8, ptr %2105, align 1, !tbaa !5
  %2107 = icmp eq i8 %2106, 114
  br i1 %2107, label %2108, label %3939

2108:                                             ; preds = %2104
  %2109 = getelementptr inbounds i8, ptr %0, i64 6
  %2110 = load i8, ptr %2109, align 1, !tbaa !5
  %2111 = icmp eq i8 %2110, 112
  br i1 %2111, label %3947, label %3939

2112:                                             ; preds = %2074
  %2113 = getelementptr inbounds i8, ptr %0, i64 2
  %2114 = load i8, ptr %2113, align 1, !tbaa !5
  %2115 = icmp eq i8 %2114, 109
  br i1 %2115, label %2116, label %3939

2116:                                             ; preds = %2112
  %2117 = getelementptr inbounds i8, ptr %0, i64 3
  %2118 = load i8, ptr %2117, align 1, !tbaa !5
  %2119 = icmp eq i8 %2118, 114
  br i1 %2119, label %2120, label %3939

2120:                                             ; preds = %2116
  %2121 = getelementptr inbounds i8, ptr %0, i64 4
  %2122 = load i8, ptr %2121, align 1, !tbaa !5
  %2123 = icmp eq i8 %2122, 101
  br i1 %2123, label %2124, label %3939

2124:                                             ; preds = %2120
  %2125 = getelementptr inbounds i8, ptr %0, i64 5
  %2126 = load i8, ptr %2125, align 1, !tbaa !5
  %2127 = icmp eq i8 %2126, 97
  br i1 %2127, label %2128, label %3939

2128:                                             ; preds = %2124
  %2129 = getelementptr inbounds i8, ptr %0, i64 6
  %2130 = load i8, ptr %2129, align 1, !tbaa !5
  %2131 = icmp eq i8 %2130, 100
  br i1 %2131, label %3947, label %3939

2132:                                             ; preds = %2074
  %2133 = getelementptr inbounds i8, ptr %0, i64 2
  %2134 = load i8, ptr %2133, align 1, !tbaa !5
  %2135 = icmp eq i8 %2134, 114
  br i1 %2135, label %2136, label %3939

2136:                                             ; preds = %2132
  %2137 = getelementptr inbounds i8, ptr %0, i64 3
  %2138 = load i8, ptr %2137, align 1, !tbaa !5
  %2139 = icmp eq i8 %2138, 105
  br i1 %2139, label %2140, label %3939

2140:                                             ; preds = %2136
  %2141 = getelementptr inbounds i8, ptr %0, i64 4
  %2142 = load i8, ptr %2141, align 1, !tbaa !5
  %2143 = icmp eq i8 %2142, 110
  br i1 %2143, label %2144, label %3939

2144:                                             ; preds = %2140
  %2145 = getelementptr inbounds i8, ptr %0, i64 5
  %2146 = load i8, ptr %2145, align 1, !tbaa !5
  %2147 = icmp eq i8 %2146, 116
  br i1 %2147, label %2148, label %3939

2148:                                             ; preds = %2144
  %2149 = getelementptr inbounds i8, ptr %0, i64 6
  %2150 = load i8, ptr %2149, align 1, !tbaa !5
  %2151 = icmp eq i8 %2150, 102
  br i1 %2151, label %3947, label %3939

2152:                                             ; preds = %2074
  %2153 = getelementptr inbounds i8, ptr %0, i64 2
  %2154 = load i8, ptr %2153, align 1, !tbaa !5
  switch i8 %2154, label %3939 [
    i8 109, label %2155
    i8 115, label %2171
  ]

2155:                                             ; preds = %2152
  %2156 = getelementptr inbounds i8, ptr %0, i64 3
  %2157 = load i8, ptr %2156, align 1, !tbaa !5
  %2158 = icmp eq i8 %2157, 108
  br i1 %2158, label %2159, label %3939

2159:                                             ; preds = %2155
  %2160 = getelementptr inbounds i8, ptr %0, i64 4
  %2161 = load i8, ptr %2160, align 1, !tbaa !5
  %2162 = icmp eq i8 %2161, 105
  br i1 %2162, label %2163, label %3939

2163:                                             ; preds = %2159
  %2164 = getelementptr inbounds i8, ptr %0, i64 5
  %2165 = load i8, ptr %2164, align 1, !tbaa !5
  %2166 = icmp eq i8 %2165, 110
  br i1 %2166, label %2167, label %3939

2167:                                             ; preds = %2163
  %2168 = getelementptr inbounds i8, ptr %0, i64 6
  %2169 = load i8, ptr %2168, align 1, !tbaa !5
  %2170 = icmp eq i8 %2169, 107
  br i1 %2170, label %3947, label %3939

2171:                                             ; preds = %2152
  %2172 = getelementptr inbounds i8, ptr %0, i64 3
  %2173 = load i8, ptr %2172, align 1, !tbaa !5
  switch i8 %2173, label %3939 [
    i8 99, label %2174
    i8 111, label %2186
    i8 114, label %2198
    i8 115, label %2210
  ]

2174:                                             ; preds = %2171
  %2175 = getelementptr inbounds i8, ptr %0, i64 4
  %2176 = load i8, ptr %2175, align 1, !tbaa !5
  %2177 = icmp eq i8 %2176, 97
  br i1 %2177, label %2178, label %3939

2178:                                             ; preds = %2174
  %2179 = getelementptr inbounds i8, ptr %0, i64 5
  %2180 = load i8, ptr %2179, align 1, !tbaa !5
  %2181 = icmp eq i8 %2180, 108
  br i1 %2181, label %2182, label %3939

2182:                                             ; preds = %2178
  %2183 = getelementptr inbounds i8, ptr %0, i64 6
  %2184 = load i8, ptr %2183, align 1, !tbaa !5
  %2185 = icmp eq i8 %2184, 108
  br i1 %2185, label %3947, label %3939

2186:                                             ; preds = %2171
  %2187 = getelementptr inbounds i8, ptr %0, i64 4
  %2188 = load i8, ptr %2187, align 1, !tbaa !5
  %2189 = icmp eq i8 %2188, 112
  br i1 %2189, label %2190, label %3939

2190:                                             ; preds = %2186
  %2191 = getelementptr inbounds i8, ptr %0, i64 5
  %2192 = load i8, ptr %2191, align 1, !tbaa !5
  %2193 = icmp eq i8 %2192, 101
  br i1 %2193, label %2194, label %3939

2194:                                             ; preds = %2190
  %2195 = getelementptr inbounds i8, ptr %0, i64 6
  %2196 = load i8, ptr %2195, align 1, !tbaa !5
  %2197 = icmp eq i8 %2196, 110
  br i1 %2197, label %3947, label %3939

2198:                                             ; preds = %2171
  %2199 = getelementptr inbounds i8, ptr %0, i64 4
  %2200 = load i8, ptr %2199, align 1, !tbaa !5
  %2201 = icmp eq i8 %2200, 101
  br i1 %2201, label %2202, label %3939

2202:                                             ; preds = %2198
  %2203 = getelementptr inbounds i8, ptr %0, i64 5
  %2204 = load i8, ptr %2203, align 1, !tbaa !5
  %2205 = icmp eq i8 %2204, 97
  br i1 %2205, label %2206, label %3939

2206:                                             ; preds = %2202
  %2207 = getelementptr inbounds i8, ptr %0, i64 6
  %2208 = load i8, ptr %2207, align 1, !tbaa !5
  %2209 = icmp eq i8 %2208, 100
  br i1 %2209, label %3947, label %3939

2210:                                             ; preds = %2171
  %2211 = getelementptr inbounds i8, ptr %0, i64 4
  %2212 = load i8, ptr %2211, align 1, !tbaa !5
  %2213 = icmp eq i8 %2212, 101
  br i1 %2213, label %2214, label %3939

2214:                                             ; preds = %2210
  %2215 = getelementptr inbounds i8, ptr %0, i64 5
  %2216 = load i8, ptr %2215, align 1, !tbaa !5
  %2217 = icmp eq i8 %2216, 101
  br i1 %2217, label %2218, label %3939

2218:                                             ; preds = %2214
  %2219 = getelementptr inbounds i8, ptr %0, i64 6
  %2220 = load i8, ptr %2219, align 1, !tbaa !5
  %2221 = icmp eq i8 %2220, 107
  br i1 %2221, label %3947, label %3939

2222:                                             ; preds = %1697
  %2223 = getelementptr inbounds i8, ptr %0, i64 1
  %2224 = load i8, ptr %2223, align 1, !tbaa !5
  %2225 = icmp eq i8 %2224, 101
  br i1 %2225, label %2226, label %3939

2226:                                             ; preds = %2222
  %2227 = getelementptr inbounds i8, ptr %0, i64 2
  %2228 = load i8, ptr %2227, align 1, !tbaa !5
  %2229 = icmp eq i8 %2228, 108
  br i1 %2229, label %2230, label %3939

2230:                                             ; preds = %2226
  %2231 = getelementptr inbounds i8, ptr %0, i64 3
  %2232 = load i8, ptr %2231, align 1, !tbaa !5
  %2233 = icmp eq i8 %2232, 108
  br i1 %2233, label %2234, label %3939

2234:                                             ; preds = %2230
  %2235 = getelementptr inbounds i8, ptr %0, i64 4
  %2236 = load i8, ptr %2235, align 1, !tbaa !5
  %2237 = icmp eq i8 %2236, 100
  br i1 %2237, label %2238, label %3939

2238:                                             ; preds = %2234
  %2239 = getelementptr inbounds i8, ptr %0, i64 5
  %2240 = load i8, ptr %2239, align 1, !tbaa !5
  %2241 = icmp eq i8 %2240, 105
  br i1 %2241, label %2242, label %3939

2242:                                             ; preds = %2238
  %2243 = getelementptr inbounds i8, ptr %0, i64 6
  %2244 = load i8, ptr %2243, align 1, !tbaa !5
  %2245 = icmp eq i8 %2244, 114
  br i1 %2245, label %3947, label %3939

2246:                                             ; preds = %1697
  %2247 = getelementptr inbounds i8, ptr %0, i64 1
  %2248 = load i8, ptr %2247, align 1, !tbaa !5
  switch i8 %2248, label %3939 [
    i8 99, label %2249
    i8 110, label %2269
  ]

2249:                                             ; preds = %2246
  %2250 = getelementptr inbounds i8, ptr %0, i64 2
  %2251 = load i8, ptr %2250, align 1, !tbaa !5
  %2252 = icmp eq i8 %2251, 102
  br i1 %2252, label %2253, label %3939

2253:                                             ; preds = %2249
  %2254 = getelementptr inbounds i8, ptr %0, i64 3
  %2255 = load i8, ptr %2254, align 1, !tbaa !5
  %2256 = icmp eq i8 %2255, 105
  br i1 %2256, label %2257, label %3939

2257:                                             ; preds = %2253
  %2258 = getelementptr inbounds i8, ptr %0, i64 4
  %2259 = load i8, ptr %2258, align 1, !tbaa !5
  %2260 = icmp eq i8 %2259, 114
  br i1 %2260, label %2261, label %3939

2261:                                             ; preds = %2257
  %2262 = getelementptr inbounds i8, ptr %0, i64 5
  %2263 = load i8, ptr %2262, align 1, !tbaa !5
  %2264 = icmp eq i8 %2263, 115
  br i1 %2264, label %2265, label %3939

2265:                                             ; preds = %2261
  %2266 = getelementptr inbounds i8, ptr %0, i64 6
  %2267 = load i8, ptr %2266, align 1, !tbaa !5
  %2268 = icmp eq i8 %2267, 116
  br i1 %2268, label %3947, label %3939

2269:                                             ; preds = %2246
  %2270 = getelementptr inbounds i8, ptr %0, i64 2
  %2271 = load i8, ptr %2270, align 1, !tbaa !5
  %2272 = icmp eq i8 %2271, 115
  br i1 %2272, label %2273, label %3939

2273:                                             ; preds = %2269
  %2274 = getelementptr inbounds i8, ptr %0, i64 3
  %2275 = load i8, ptr %2274, align 1, !tbaa !5
  %2276 = icmp eq i8 %2275, 104
  br i1 %2276, label %2277, label %3939

2277:                                             ; preds = %2273
  %2278 = getelementptr inbounds i8, ptr %0, i64 4
  %2279 = load i8, ptr %2278, align 1, !tbaa !5
  %2280 = icmp eq i8 %2279, 105
  br i1 %2280, label %2281, label %3939

2281:                                             ; preds = %2277
  %2282 = getelementptr inbounds i8, ptr %0, i64 5
  %2283 = load i8, ptr %2282, align 1, !tbaa !5
  %2284 = icmp eq i8 %2283, 102
  br i1 %2284, label %2285, label %3939

2285:                                             ; preds = %2281
  %2286 = getelementptr inbounds i8, ptr %0, i64 6
  %2287 = load i8, ptr %2286, align 1, !tbaa !5
  %2288 = icmp eq i8 %2287, 116
  br i1 %2288, label %3947, label %3939

2289:                                             ; preds = %1697
  %2290 = getelementptr inbounds i8, ptr %0, i64 1
  %2291 = load i8, ptr %2290, align 1, !tbaa !5
  %2292 = icmp eq i8 %2291, 97
  br i1 %2292, label %2293, label %3939

2293:                                             ; preds = %2289
  %2294 = getelementptr inbounds i8, ptr %0, i64 2
  %2295 = load i8, ptr %2294, align 1, !tbaa !5
  %2296 = icmp eq i8 %2295, 105
  br i1 %2296, label %2297, label %3939

2297:                                             ; preds = %2293
  %2298 = getelementptr inbounds i8, ptr %0, i64 3
  %2299 = load i8, ptr %2298, align 1, !tbaa !5
  %2300 = icmp eq i8 %2299, 116
  br i1 %2300, label %2301, label %3939

2301:                                             ; preds = %2297
  %2302 = getelementptr inbounds i8, ptr %0, i64 4
  %2303 = load i8, ptr %2302, align 1, !tbaa !5
  %2304 = icmp eq i8 %2303, 112
  br i1 %2304, label %2305, label %3939

2305:                                             ; preds = %2301
  %2306 = getelementptr inbounds i8, ptr %0, i64 5
  %2307 = load i8, ptr %2306, align 1, !tbaa !5
  %2308 = icmp eq i8 %2307, 105
  br i1 %2308, label %2309, label %3939

2309:                                             ; preds = %2305
  %2310 = getelementptr inbounds i8, ptr %0, i64 6
  %2311 = load i8, ptr %2310, align 1, !tbaa !5
  %2312 = icmp eq i8 %2311, 100
  br i1 %2312, label %3947, label %3939

2313:                                             ; preds = %3
  %2314 = load i8, ptr %0, align 1, !tbaa !5
  switch i8 %2314, label %3939 [
    i8 65, label %2315
    i8 95, label %2343
    i8 99, label %2410
    i8 100, label %2461
    i8 101, label %2489
    i8 102, label %2532
    i8 103, label %2560
    i8 114, label %2649
    i8 115, label %2691
    i8 116, label %2800
  ]

2315:                                             ; preds = %2313
  %2316 = getelementptr inbounds i8, ptr %0, i64 1
  %2317 = load i8, ptr %2316, align 1, !tbaa !5
  %2318 = icmp eq i8 %2317, 85
  br i1 %2318, label %2319, label %3939

2319:                                             ; preds = %2315
  %2320 = getelementptr inbounds i8, ptr %0, i64 2
  %2321 = load i8, ptr %2320, align 1, !tbaa !5
  %2322 = icmp eq i8 %2321, 84
  br i1 %2322, label %2323, label %3939

2323:                                             ; preds = %2319
  %2324 = getelementptr inbounds i8, ptr %0, i64 3
  %2325 = load i8, ptr %2324, align 1, !tbaa !5
  %2326 = icmp eq i8 %2325, 79
  br i1 %2326, label %2327, label %3939

2327:                                             ; preds = %2323
  %2328 = getelementptr inbounds i8, ptr %0, i64 4
  %2329 = load i8, ptr %2328, align 1, !tbaa !5
  %2330 = icmp eq i8 %2329, 76
  br i1 %2330, label %2331, label %3939

2331:                                             ; preds = %2327
  %2332 = getelementptr inbounds i8, ptr %0, i64 5
  %2333 = load i8, ptr %2332, align 1, !tbaa !5
  %2334 = icmp eq i8 %2333, 79
  br i1 %2334, label %2335, label %3939

2335:                                             ; preds = %2331
  %2336 = getelementptr inbounds i8, ptr %0, i64 6
  %2337 = load i8, ptr %2336, align 1, !tbaa !5
  %2338 = icmp eq i8 %2337, 65
  br i1 %2338, label %2339, label %3939

2339:                                             ; preds = %2335
  %2340 = getelementptr inbounds i8, ptr %0, i64 7
  %2341 = load i8, ptr %2340, align 1, !tbaa !5
  %2342 = icmp eq i8 %2341, 68
  br i1 %2342, label %3947, label %3939

2343:                                             ; preds = %2313
  %2344 = getelementptr inbounds i8, ptr %0, i64 1
  %2345 = load i8, ptr %2344, align 1, !tbaa !5
  %2346 = icmp eq i8 %2345, 95
  br i1 %2346, label %2347, label %3939

2347:                                             ; preds = %2343
  %2348 = getelementptr inbounds i8, ptr %0, i64 2
  %2349 = load i8, ptr %2348, align 1, !tbaa !5
  switch i8 %2349, label %3939 [
    i8 68, label %2350
    i8 70, label %2370
    i8 76, label %2390
  ]

2350:                                             ; preds = %2347
  %2351 = getelementptr inbounds i8, ptr %0, i64 3
  %2352 = load i8, ptr %2351, align 1, !tbaa !5
  %2353 = icmp eq i8 %2352, 65
  br i1 %2353, label %2354, label %3939

2354:                                             ; preds = %2350
  %2355 = getelementptr inbounds i8, ptr %0, i64 4
  %2356 = load i8, ptr %2355, align 1, !tbaa !5
  %2357 = icmp eq i8 %2356, 84
  br i1 %2357, label %2358, label %3939

2358:                                             ; preds = %2354
  %2359 = getelementptr inbounds i8, ptr %0, i64 5
  %2360 = load i8, ptr %2359, align 1, !tbaa !5
  %2361 = icmp eq i8 %2360, 65
  br i1 %2361, label %2362, label %3939

2362:                                             ; preds = %2358
  %2363 = getelementptr inbounds i8, ptr %0, i64 6
  %2364 = load i8, ptr %2363, align 1, !tbaa !5
  %2365 = icmp eq i8 %2364, 95
  br i1 %2365, label %2366, label %3939

2366:                                             ; preds = %2362
  %2367 = getelementptr inbounds i8, ptr %0, i64 7
  %2368 = load i8, ptr %2367, align 1, !tbaa !5
  %2369 = icmp eq i8 %2368, 95
  br i1 %2369, label %3947, label %3939

2370:                                             ; preds = %2347
  %2371 = getelementptr inbounds i8, ptr %0, i64 3
  %2372 = load i8, ptr %2371, align 1, !tbaa !5
  %2373 = icmp eq i8 %2372, 73
  br i1 %2373, label %2374, label %3939

2374:                                             ; preds = %2370
  %2375 = getelementptr inbounds i8, ptr %0, i64 4
  %2376 = load i8, ptr %2375, align 1, !tbaa !5
  %2377 = icmp eq i8 %2376, 76
  br i1 %2377, label %2378, label %3939

2378:                                             ; preds = %2374
  %2379 = getelementptr inbounds i8, ptr %0, i64 5
  %2380 = load i8, ptr %2379, align 1, !tbaa !5
  %2381 = icmp eq i8 %2380, 69
  br i1 %2381, label %2382, label %3939

2382:                                             ; preds = %2378
  %2383 = getelementptr inbounds i8, ptr %0, i64 6
  %2384 = load i8, ptr %2383, align 1, !tbaa !5
  %2385 = icmp eq i8 %2384, 95
  br i1 %2385, label %2386, label %3939

2386:                                             ; preds = %2382
  %2387 = getelementptr inbounds i8, ptr %0, i64 7
  %2388 = load i8, ptr %2387, align 1, !tbaa !5
  %2389 = icmp eq i8 %2388, 95
  br i1 %2389, label %3947, label %3939

2390:                                             ; preds = %2347
  %2391 = getelementptr inbounds i8, ptr %0, i64 3
  %2392 = load i8, ptr %2391, align 1, !tbaa !5
  %2393 = icmp eq i8 %2392, 73
  br i1 %2393, label %2394, label %3939

2394:                                             ; preds = %2390
  %2395 = getelementptr inbounds i8, ptr %0, i64 4
  %2396 = load i8, ptr %2395, align 1, !tbaa !5
  %2397 = icmp eq i8 %2396, 78
  br i1 %2397, label %2398, label %3939

2398:                                             ; preds = %2394
  %2399 = getelementptr inbounds i8, ptr %0, i64 5
  %2400 = load i8, ptr %2399, align 1, !tbaa !5
  %2401 = icmp eq i8 %2400, 69
  br i1 %2401, label %2402, label %3939

2402:                                             ; preds = %2398
  %2403 = getelementptr inbounds i8, ptr %0, i64 6
  %2404 = load i8, ptr %2403, align 1, !tbaa !5
  %2405 = icmp eq i8 %2404, 95
  br i1 %2405, label %2406, label %3939

2406:                                             ; preds = %2402
  %2407 = getelementptr inbounds i8, ptr %0, i64 7
  %2408 = load i8, ptr %2407, align 1, !tbaa !5
  %2409 = icmp eq i8 %2408, 95
  br i1 %2409, label %3947, label %3939

2410:                                             ; preds = %2313
  %2411 = getelementptr inbounds i8, ptr %0, i64 1
  %2412 = load i8, ptr %2411, align 1, !tbaa !5
  switch i8 %2412, label %3939 [
    i8 108, label %2413
    i8 111, label %2437
  ]

2413:                                             ; preds = %2410
  %2414 = getelementptr inbounds i8, ptr %0, i64 2
  %2415 = load i8, ptr %2414, align 1, !tbaa !5
  %2416 = icmp eq i8 %2415, 111
  br i1 %2416, label %2417, label %3939

2417:                                             ; preds = %2413
  %2418 = getelementptr inbounds i8, ptr %0, i64 3
  %2419 = load i8, ptr %2418, align 1, !tbaa !5
  %2420 = icmp eq i8 %2419, 115
  br i1 %2420, label %2421, label %3939

2421:                                             ; preds = %2417
  %2422 = getelementptr inbounds i8, ptr %0, i64 4
  %2423 = load i8, ptr %2422, align 1, !tbaa !5
  %2424 = icmp eq i8 %2423, 101
  br i1 %2424, label %2425, label %3939

2425:                                             ; preds = %2421
  %2426 = getelementptr inbounds i8, ptr %0, i64 5
  %2427 = load i8, ptr %2426, align 1, !tbaa !5
  %2428 = icmp eq i8 %2427, 100
  br i1 %2428, label %2429, label %3939

2429:                                             ; preds = %2425
  %2430 = getelementptr inbounds i8, ptr %0, i64 6
  %2431 = load i8, ptr %2430, align 1, !tbaa !5
  %2432 = icmp eq i8 %2431, 105
  br i1 %2432, label %2433, label %3939

2433:                                             ; preds = %2429
  %2434 = getelementptr inbounds i8, ptr %0, i64 7
  %2435 = load i8, ptr %2434, align 1, !tbaa !5
  %2436 = icmp eq i8 %2435, 114
  br i1 %2436, label %3947, label %3939

2437:                                             ; preds = %2410
  %2438 = getelementptr inbounds i8, ptr %0, i64 2
  %2439 = load i8, ptr %2438, align 1, !tbaa !5
  %2440 = icmp eq i8 %2439, 110
  br i1 %2440, label %2441, label %3939

2441:                                             ; preds = %2437
  %2442 = getelementptr inbounds i8, ptr %0, i64 3
  %2443 = load i8, ptr %2442, align 1, !tbaa !5
  %2444 = icmp eq i8 %2443, 116
  br i1 %2444, label %2445, label %3939

2445:                                             ; preds = %2441
  %2446 = getelementptr inbounds i8, ptr %0, i64 4
  %2447 = load i8, ptr %2446, align 1, !tbaa !5
  %2448 = icmp eq i8 %2447, 105
  br i1 %2448, label %2449, label %3939

2449:                                             ; preds = %2445
  %2450 = getelementptr inbounds i8, ptr %0, i64 5
  %2451 = load i8, ptr %2450, align 1, !tbaa !5
  %2452 = icmp eq i8 %2451, 110
  br i1 %2452, label %2453, label %3939

2453:                                             ; preds = %2449
  %2454 = getelementptr inbounds i8, ptr %0, i64 6
  %2455 = load i8, ptr %2454, align 1, !tbaa !5
  %2456 = icmp eq i8 %2455, 117
  br i1 %2456, label %2457, label %3939

2457:                                             ; preds = %2453
  %2458 = getelementptr inbounds i8, ptr %0, i64 7
  %2459 = load i8, ptr %2458, align 1, !tbaa !5
  %2460 = icmp eq i8 %2459, 101
  br i1 %2460, label %3947, label %3939

2461:                                             ; preds = %2313
  %2462 = getelementptr inbounds i8, ptr %0, i64 1
  %2463 = load i8, ptr %2462, align 1, !tbaa !5
  %2464 = icmp eq i8 %2463, 98
  br i1 %2464, label %2465, label %3939

2465:                                             ; preds = %2461
  %2466 = getelementptr inbounds i8, ptr %0, i64 2
  %2467 = load i8, ptr %2466, align 1, !tbaa !5
  %2468 = icmp eq i8 %2467, 109
  br i1 %2468, label %2469, label %3939

2469:                                             ; preds = %2465
  %2470 = getelementptr inbounds i8, ptr %0, i64 3
  %2471 = load i8, ptr %2470, align 1, !tbaa !5
  %2472 = icmp eq i8 %2471, 99
  br i1 %2472, label %2473, label %3939

2473:                                             ; preds = %2469
  %2474 = getelementptr inbounds i8, ptr %0, i64 4
  %2475 = load i8, ptr %2474, align 1, !tbaa !5
  %2476 = icmp eq i8 %2475, 108
  br i1 %2476, label %2477, label %3939

2477:                                             ; preds = %2473
  %2478 = getelementptr inbounds i8, ptr %0, i64 5
  %2479 = load i8, ptr %2478, align 1, !tbaa !5
  %2480 = icmp eq i8 %2479, 111
  br i1 %2480, label %2481, label %3939

2481:                                             ; preds = %2477
  %2482 = getelementptr inbounds i8, ptr %0, i64 6
  %2483 = load i8, ptr %2482, align 1, !tbaa !5
  %2484 = icmp eq i8 %2483, 115
  br i1 %2484, label %2485, label %3939

2485:                                             ; preds = %2481
  %2486 = getelementptr inbounds i8, ptr %0, i64 7
  %2487 = load i8, ptr %2486, align 1, !tbaa !5
  %2488 = icmp eq i8 %2487, 101
  br i1 %2488, label %3947, label %3939

2489:                                             ; preds = %2313
  %2490 = getelementptr inbounds i8, ptr %0, i64 1
  %2491 = load i8, ptr %2490, align 1, !tbaa !5
  %2492 = icmp eq i8 %2491, 110
  br i1 %2492, label %2493, label %3939

2493:                                             ; preds = %2489
  %2494 = getelementptr inbounds i8, ptr %0, i64 2
  %2495 = load i8, ptr %2494, align 1, !tbaa !5
  %2496 = icmp eq i8 %2495, 100
  br i1 %2496, label %2497, label %3939

2497:                                             ; preds = %2493
  %2498 = getelementptr inbounds i8, ptr %0, i64 3
  %2499 = load i8, ptr %2498, align 1, !tbaa !5
  switch i8 %2499, label %3939 [
    i8 103, label %2500
    i8 112, label %2516
  ]

2500:                                             ; preds = %2497
  %2501 = getelementptr inbounds i8, ptr %0, i64 4
  %2502 = load i8, ptr %2501, align 1, !tbaa !5
  %2503 = icmp eq i8 %2502, 114
  br i1 %2503, label %2504, label %3939

2504:                                             ; preds = %2500
  %2505 = getelementptr inbounds i8, ptr %0, i64 5
  %2506 = load i8, ptr %2505, align 1, !tbaa !5
  %2507 = icmp eq i8 %2506, 101
  br i1 %2507, label %2508, label %3939

2508:                                             ; preds = %2504
  %2509 = getelementptr inbounds i8, ptr %0, i64 6
  %2510 = load i8, ptr %2509, align 1, !tbaa !5
  %2511 = icmp eq i8 %2510, 110
  br i1 %2511, label %2512, label %3939

2512:                                             ; preds = %2508
  %2513 = getelementptr inbounds i8, ptr %0, i64 7
  %2514 = load i8, ptr %2513, align 1, !tbaa !5
  %2515 = icmp eq i8 %2514, 116
  br i1 %2515, label %3947, label %3939

2516:                                             ; preds = %2497
  %2517 = getelementptr inbounds i8, ptr %0, i64 4
  %2518 = load i8, ptr %2517, align 1, !tbaa !5
  %2519 = icmp eq i8 %2518, 119
  br i1 %2519, label %2520, label %3939

2520:                                             ; preds = %2516
  %2521 = getelementptr inbounds i8, ptr %0, i64 5
  %2522 = load i8, ptr %2521, align 1, !tbaa !5
  %2523 = icmp eq i8 %2522, 101
  br i1 %2523, label %2524, label %3939

2524:                                             ; preds = %2520
  %2525 = getelementptr inbounds i8, ptr %0, i64 6
  %2526 = load i8, ptr %2525, align 1, !tbaa !5
  %2527 = icmp eq i8 %2526, 110
  br i1 %2527, label %2528, label %3939

2528:                                             ; preds = %2524
  %2529 = getelementptr inbounds i8, ptr %0, i64 7
  %2530 = load i8, ptr %2529, align 1, !tbaa !5
  %2531 = icmp eq i8 %2530, 116
  br i1 %2531, label %3947, label %3939

2532:                                             ; preds = %2313
  %2533 = getelementptr inbounds i8, ptr %0, i64 1
  %2534 = load i8, ptr %2533, align 1, !tbaa !5
  %2535 = icmp eq i8 %2534, 111
  br i1 %2535, label %2536, label %3939

2536:                                             ; preds = %2532
  %2537 = getelementptr inbounds i8, ptr %0, i64 2
  %2538 = load i8, ptr %2537, align 1, !tbaa !5
  %2539 = icmp eq i8 %2538, 114
  br i1 %2539, label %2540, label %3939

2540:                                             ; preds = %2536
  %2541 = getelementptr inbounds i8, ptr %0, i64 3
  %2542 = load i8, ptr %2541, align 1, !tbaa !5
  %2543 = icmp eq i8 %2542, 109
  br i1 %2543, label %2544, label %3939

2544:                                             ; preds = %2540
  %2545 = getelementptr inbounds i8, ptr %0, i64 4
  %2546 = load i8, ptr %2545, align 1, !tbaa !5
  %2547 = icmp eq i8 %2546, 108
  br i1 %2547, label %2548, label %3939

2548:                                             ; preds = %2544
  %2549 = getelementptr inbounds i8, ptr %0, i64 5
  %2550 = load i8, ptr %2549, align 1, !tbaa !5
  %2551 = icmp eq i8 %2550, 105
  br i1 %2551, label %2552, label %3939

2552:                                             ; preds = %2548
  %2553 = getelementptr inbounds i8, ptr %0, i64 6
  %2554 = load i8, ptr %2553, align 1, !tbaa !5
  %2555 = icmp eq i8 %2554, 110
  br i1 %2555, label %2556, label %3939

2556:                                             ; preds = %2552
  %2557 = getelementptr inbounds i8, ptr %0, i64 7
  %2558 = load i8, ptr %2557, align 1, !tbaa !5
  %2559 = icmp eq i8 %2558, 101
  br i1 %2559, label %3947, label %3939

2560:                                             ; preds = %2313
  %2561 = getelementptr inbounds i8, ptr %0, i64 1
  %2562 = load i8, ptr %2561, align 1, !tbaa !5
  %2563 = icmp eq i8 %2562, 101
  br i1 %2563, label %2564, label %3939

2564:                                             ; preds = %2560
  %2565 = getelementptr inbounds i8, ptr %0, i64 2
  %2566 = load i8, ptr %2565, align 1, !tbaa !5
  %2567 = icmp eq i8 %2566, 116
  br i1 %2567, label %2568, label %3939

2568:                                             ; preds = %2564
  %2569 = getelementptr inbounds i8, ptr %0, i64 3
  %2570 = load i8, ptr %2569, align 1, !tbaa !5
  switch i8 %2570, label %3939 [
    i8 103, label %2571
    i8 108, label %2602
    i8 112, label %2618
  ]

2571:                                             ; preds = %2568
  %2572 = getelementptr inbounds i8, ptr %0, i64 4
  %2573 = load i8, ptr %2572, align 1, !tbaa !5
  %2574 = icmp eq i8 %2573, 114
  br i1 %2574, label %2575, label %3939

2575:                                             ; preds = %2571
  %2576 = getelementptr inbounds i8, ptr %0, i64 5
  %2577 = load i8, ptr %2576, align 1, !tbaa !5
  switch i8 %2577, label %3939 [
    i8 101, label %2578
    i8 103, label %2586
    i8 110, label %2594
  ]

2578:                                             ; preds = %2575
  %2579 = getelementptr inbounds i8, ptr %0, i64 6
  %2580 = load i8, ptr %2579, align 1, !tbaa !5
  %2581 = icmp eq i8 %2580, 110
  br i1 %2581, label %2582, label %3939

2582:                                             ; preds = %2578
  %2583 = getelementptr inbounds i8, ptr %0, i64 7
  %2584 = load i8, ptr %2583, align 1, !tbaa !5
  %2585 = icmp eq i8 %2584, 116
  br i1 %2585, label %3947, label %3939

2586:                                             ; preds = %2575
  %2587 = getelementptr inbounds i8, ptr %0, i64 6
  %2588 = load i8, ptr %2587, align 1, !tbaa !5
  %2589 = icmp eq i8 %2588, 105
  br i1 %2589, label %2590, label %3939

2590:                                             ; preds = %2586
  %2591 = getelementptr inbounds i8, ptr %0, i64 7
  %2592 = load i8, ptr %2591, align 1, !tbaa !5
  %2593 = icmp eq i8 %2592, 100
  br i1 %2593, label %3947, label %3939

2594:                                             ; preds = %2575
  %2595 = getelementptr inbounds i8, ptr %0, i64 6
  %2596 = load i8, ptr %2595, align 1, !tbaa !5
  %2597 = icmp eq i8 %2596, 97
  br i1 %2597, label %2598, label %3939

2598:                                             ; preds = %2594
  %2599 = getelementptr inbounds i8, ptr %0, i64 7
  %2600 = load i8, ptr %2599, align 1, !tbaa !5
  %2601 = icmp eq i8 %2600, 109
  br i1 %2601, label %3947, label %3939

2602:                                             ; preds = %2568
  %2603 = getelementptr inbounds i8, ptr %0, i64 4
  %2604 = load i8, ptr %2603, align 1, !tbaa !5
  %2605 = icmp eq i8 %2604, 111
  br i1 %2605, label %2606, label %3939

2606:                                             ; preds = %2602
  %2607 = getelementptr inbounds i8, ptr %0, i64 5
  %2608 = load i8, ptr %2607, align 1, !tbaa !5
  %2609 = icmp eq i8 %2608, 103
  br i1 %2609, label %2610, label %3939

2610:                                             ; preds = %2606
  %2611 = getelementptr inbounds i8, ptr %0, i64 6
  %2612 = load i8, ptr %2611, align 1, !tbaa !5
  %2613 = icmp eq i8 %2612, 105
  br i1 %2613, label %2614, label %3939

2614:                                             ; preds = %2610
  %2615 = getelementptr inbounds i8, ptr %0, i64 7
  %2616 = load i8, ptr %2615, align 1, !tbaa !5
  %2617 = icmp eq i8 %2616, 110
  br i1 %2617, label %3947, label %3939

2618:                                             ; preds = %2568
  %2619 = getelementptr inbounds i8, ptr %0, i64 4
  %2620 = load i8, ptr %2619, align 1, !tbaa !5
  %2621 = icmp eq i8 %2620, 119
  br i1 %2621, label %2622, label %3939

2622:                                             ; preds = %2618
  %2623 = getelementptr inbounds i8, ptr %0, i64 5
  %2624 = load i8, ptr %2623, align 1, !tbaa !5
  switch i8 %2624, label %3939 [
    i8 101, label %2625
    i8 110, label %2633
    i8 117, label %2641
  ]

2625:                                             ; preds = %2622
  %2626 = getelementptr inbounds i8, ptr %0, i64 6
  %2627 = load i8, ptr %2626, align 1, !tbaa !5
  %2628 = icmp eq i8 %2627, 110
  br i1 %2628, label %2629, label %3939

2629:                                             ; preds = %2625
  %2630 = getelementptr inbounds i8, ptr %0, i64 7
  %2631 = load i8, ptr %2630, align 1, !tbaa !5
  %2632 = icmp eq i8 %2631, 116
  br i1 %2632, label %3947, label %3939

2633:                                             ; preds = %2622
  %2634 = getelementptr inbounds i8, ptr %0, i64 6
  %2635 = load i8, ptr %2634, align 1, !tbaa !5
  %2636 = icmp eq i8 %2635, 97
  br i1 %2636, label %2637, label %3939

2637:                                             ; preds = %2633
  %2638 = getelementptr inbounds i8, ptr %0, i64 7
  %2639 = load i8, ptr %2638, align 1, !tbaa !5
  %2640 = icmp eq i8 %2639, 109
  br i1 %2640, label %3947, label %3939

2641:                                             ; preds = %2622
  %2642 = getelementptr inbounds i8, ptr %0, i64 6
  %2643 = load i8, ptr %2642, align 1, !tbaa !5
  %2644 = icmp eq i8 %2643, 105
  br i1 %2644, label %2645, label %3939

2645:                                             ; preds = %2641
  %2646 = getelementptr inbounds i8, ptr %0, i64 7
  %2647 = load i8, ptr %2646, align 1, !tbaa !5
  %2648 = icmp eq i8 %2647, 100
  br i1 %2648, label %3947, label %3939

2649:                                             ; preds = %2313
  %2650 = getelementptr inbounds i8, ptr %0, i64 1
  %2651 = load i8, ptr %2650, align 1, !tbaa !5
  %2652 = icmp eq i8 %2651, 101
  br i1 %2652, label %2653, label %3939

2653:                                             ; preds = %2649
  %2654 = getelementptr inbounds i8, ptr %0, i64 2
  %2655 = load i8, ptr %2654, align 1, !tbaa !5
  %2656 = icmp eq i8 %2655, 97
  br i1 %2656, label %2657, label %3939

2657:                                             ; preds = %2653
  %2658 = getelementptr inbounds i8, ptr %0, i64 3
  %2659 = load i8, ptr %2658, align 1, !tbaa !5
  %2660 = icmp eq i8 %2659, 100
  br i1 %2660, label %2661, label %3939

2661:                                             ; preds = %2657
  %2662 = getelementptr inbounds i8, ptr %0, i64 4
  %2663 = load i8, ptr %2662, align 1, !tbaa !5
  switch i8 %2663, label %3939 [
    i8 108, label %2664
    i8 112, label %2679
  ]

2664:                                             ; preds = %2661
  %2665 = getelementptr inbounds i8, ptr %0, i64 5
  %2666 = load i8, ptr %2665, align 1, !tbaa !5
  %2667 = icmp eq i8 %2666, 105
  br i1 %2667, label %2668, label %3939

2668:                                             ; preds = %2664
  %2669 = getelementptr inbounds i8, ptr %0, i64 6
  %2670 = load i8, ptr %2669, align 1, !tbaa !5
  %2671 = icmp eq i8 %2670, 110
  br i1 %2671, label %2672, label %3939

2672:                                             ; preds = %2668
  %2673 = getelementptr inbounds i8, ptr %0, i64 7
  %2674 = load i8, ptr %2673, align 1, !tbaa !5
  %2675 = icmp eq i8 %2674, 107
  %2676 = select i1 %2675, i32 -163, i32 0
  %2677 = icmp eq i8 %2674, 101
  %2678 = select i1 %2677, i32 -162, i32 %2676
  br label %3947

2679:                                             ; preds = %2661
  %2680 = getelementptr inbounds i8, ptr %0, i64 5
  %2681 = load i8, ptr %2680, align 1, !tbaa !5
  %2682 = icmp eq i8 %2681, 105
  br i1 %2682, label %2683, label %3939

2683:                                             ; preds = %2679
  %2684 = getelementptr inbounds i8, ptr %0, i64 6
  %2685 = load i8, ptr %2684, align 1, !tbaa !5
  %2686 = icmp eq i8 %2685, 112
  br i1 %2686, label %2687, label %3939

2687:                                             ; preds = %2683
  %2688 = getelementptr inbounds i8, ptr %0, i64 7
  %2689 = load i8, ptr %2688, align 1, !tbaa !5
  %2690 = icmp eq i8 %2689, 101
  br i1 %2690, label %3947, label %3939

2691:                                             ; preds = %2313
  %2692 = getelementptr inbounds i8, ptr %0, i64 1
  %2693 = load i8, ptr %2692, align 1, !tbaa !5
  switch i8 %2693, label %3939 [
    i8 101, label %2694
    i8 104, label %2733
    i8 121, label %2776
  ]

2694:                                             ; preds = %2691
  %2695 = getelementptr inbounds i8, ptr %0, i64 2
  %2696 = load i8, ptr %2695, align 1, !tbaa !5
  %2697 = icmp eq i8 %2696, 116
  br i1 %2697, label %2698, label %3939

2698:                                             ; preds = %2694
  %2699 = getelementptr inbounds i8, ptr %0, i64 3
  %2700 = load i8, ptr %2699, align 1, !tbaa !5
  switch i8 %2700, label %3939 [
    i8 103, label %2701
    i8 112, label %2717
  ]

2701:                                             ; preds = %2698
  %2702 = getelementptr inbounds i8, ptr %0, i64 4
  %2703 = load i8, ptr %2702, align 1, !tbaa !5
  %2704 = icmp eq i8 %2703, 114
  br i1 %2704, label %2705, label %3939

2705:                                             ; preds = %2701
  %2706 = getelementptr inbounds i8, ptr %0, i64 5
  %2707 = load i8, ptr %2706, align 1, !tbaa !5
  %2708 = icmp eq i8 %2707, 101
  br i1 %2708, label %2709, label %3939

2709:                                             ; preds = %2705
  %2710 = getelementptr inbounds i8, ptr %0, i64 6
  %2711 = load i8, ptr %2710, align 1, !tbaa !5
  %2712 = icmp eq i8 %2711, 110
  br i1 %2712, label %2713, label %3939

2713:                                             ; preds = %2709
  %2714 = getelementptr inbounds i8, ptr %0, i64 7
  %2715 = load i8, ptr %2714, align 1, !tbaa !5
  %2716 = icmp eq i8 %2715, 116
  br i1 %2716, label %3947, label %3939

2717:                                             ; preds = %2698
  %2718 = getelementptr inbounds i8, ptr %0, i64 4
  %2719 = load i8, ptr %2718, align 1, !tbaa !5
  %2720 = icmp eq i8 %2719, 119
  br i1 %2720, label %2721, label %3939

2721:                                             ; preds = %2717
  %2722 = getelementptr inbounds i8, ptr %0, i64 5
  %2723 = load i8, ptr %2722, align 1, !tbaa !5
  %2724 = icmp eq i8 %2723, 101
  br i1 %2724, label %2725, label %3939

2725:                                             ; preds = %2721
  %2726 = getelementptr inbounds i8, ptr %0, i64 6
  %2727 = load i8, ptr %2726, align 1, !tbaa !5
  %2728 = icmp eq i8 %2727, 110
  br i1 %2728, label %2729, label %3939

2729:                                             ; preds = %2725
  %2730 = getelementptr inbounds i8, ptr %0, i64 7
  %2731 = load i8, ptr %2730, align 1, !tbaa !5
  %2732 = icmp eq i8 %2731, 116
  br i1 %2732, label %3947, label %3939

2733:                                             ; preds = %2691
  %2734 = getelementptr inbounds i8, ptr %0, i64 2
  %2735 = load i8, ptr %2734, align 1, !tbaa !5
  switch i8 %2735, label %3939 [
    i8 109, label %2736
    i8 117, label %2756
  ]

2736:                                             ; preds = %2733
  %2737 = getelementptr inbounds i8, ptr %0, i64 3
  %2738 = load i8, ptr %2737, align 1, !tbaa !5
  %2739 = icmp eq i8 %2738, 119
  br i1 %2739, label %2740, label %3939

2740:                                             ; preds = %2736
  %2741 = getelementptr inbounds i8, ptr %0, i64 4
  %2742 = load i8, ptr %2741, align 1, !tbaa !5
  %2743 = icmp eq i8 %2742, 114
  br i1 %2743, label %2744, label %3939

2744:                                             ; preds = %2740
  %2745 = getelementptr inbounds i8, ptr %0, i64 5
  %2746 = load i8, ptr %2745, align 1, !tbaa !5
  %2747 = icmp eq i8 %2746, 105
  br i1 %2747, label %2748, label %3939

2748:                                             ; preds = %2744
  %2749 = getelementptr inbounds i8, ptr %0, i64 6
  %2750 = load i8, ptr %2749, align 1, !tbaa !5
  %2751 = icmp eq i8 %2750, 116
  br i1 %2751, label %2752, label %3939

2752:                                             ; preds = %2748
  %2753 = getelementptr inbounds i8, ptr %0, i64 7
  %2754 = load i8, ptr %2753, align 1, !tbaa !5
  %2755 = icmp eq i8 %2754, 101
  br i1 %2755, label %3947, label %3939

2756:                                             ; preds = %2733
  %2757 = getelementptr inbounds i8, ptr %0, i64 3
  %2758 = load i8, ptr %2757, align 1, !tbaa !5
  %2759 = icmp eq i8 %2758, 116
  br i1 %2759, label %2760, label %3939

2760:                                             ; preds = %2756
  %2761 = getelementptr inbounds i8, ptr %0, i64 4
  %2762 = load i8, ptr %2761, align 1, !tbaa !5
  %2763 = icmp eq i8 %2762, 100
  br i1 %2763, label %2764, label %3939

2764:                                             ; preds = %2760
  %2765 = getelementptr inbounds i8, ptr %0, i64 5
  %2766 = load i8, ptr %2765, align 1, !tbaa !5
  %2767 = icmp eq i8 %2766, 111
  br i1 %2767, label %2768, label %3939

2768:                                             ; preds = %2764
  %2769 = getelementptr inbounds i8, ptr %0, i64 6
  %2770 = load i8, ptr %2769, align 1, !tbaa !5
  %2771 = icmp eq i8 %2770, 119
  br i1 %2771, label %2772, label %3939

2772:                                             ; preds = %2768
  %2773 = getelementptr inbounds i8, ptr %0, i64 7
  %2774 = load i8, ptr %2773, align 1, !tbaa !5
  %2775 = icmp eq i8 %2774, 110
  br i1 %2775, label %3947, label %3939

2776:                                             ; preds = %2691
  %2777 = getelementptr inbounds i8, ptr %0, i64 2
  %2778 = load i8, ptr %2777, align 1, !tbaa !5
  %2779 = icmp eq i8 %2778, 115
  br i1 %2779, label %2780, label %3939

2780:                                             ; preds = %2776
  %2781 = getelementptr inbounds i8, ptr %0, i64 3
  %2782 = load i8, ptr %2781, align 1, !tbaa !5
  %2783 = icmp eq i8 %2782, 119
  br i1 %2783, label %2784, label %3939

2784:                                             ; preds = %2780
  %2785 = getelementptr inbounds i8, ptr %0, i64 4
  %2786 = load i8, ptr %2785, align 1, !tbaa !5
  %2787 = icmp eq i8 %2786, 114
  br i1 %2787, label %2788, label %3939

2788:                                             ; preds = %2784
  %2789 = getelementptr inbounds i8, ptr %0, i64 5
  %2790 = load i8, ptr %2789, align 1, !tbaa !5
  %2791 = icmp eq i8 %2790, 105
  br i1 %2791, label %2792, label %3939

2792:                                             ; preds = %2788
  %2793 = getelementptr inbounds i8, ptr %0, i64 6
  %2794 = load i8, ptr %2793, align 1, !tbaa !5
  %2795 = icmp eq i8 %2794, 116
  br i1 %2795, label %2796, label %3939

2796:                                             ; preds = %2792
  %2797 = getelementptr inbounds i8, ptr %0, i64 7
  %2798 = load i8, ptr %2797, align 1, !tbaa !5
  %2799 = icmp eq i8 %2798, 101
  br i1 %2799, label %3947, label %3939

2800:                                             ; preds = %2313
  %2801 = getelementptr inbounds i8, ptr %0, i64 1
  %2802 = load i8, ptr %2801, align 1, !tbaa !5
  %2803 = icmp eq i8 %2802, 114
  br i1 %2803, label %2804, label %3939

2804:                                             ; preds = %2800
  %2805 = getelementptr inbounds i8, ptr %0, i64 2
  %2806 = load i8, ptr %2805, align 1, !tbaa !5
  %2807 = icmp eq i8 %2806, 117
  br i1 %2807, label %2808, label %3939

2808:                                             ; preds = %2804
  %2809 = getelementptr inbounds i8, ptr %0, i64 3
  %2810 = load i8, ptr %2809, align 1, !tbaa !5
  %2811 = icmp eq i8 %2810, 110
  br i1 %2811, label %2812, label %3939

2812:                                             ; preds = %2808
  %2813 = getelementptr inbounds i8, ptr %0, i64 4
  %2814 = load i8, ptr %2813, align 1, !tbaa !5
  %2815 = icmp eq i8 %2814, 99
  br i1 %2815, label %2816, label %3939

2816:                                             ; preds = %2812
  %2817 = getelementptr inbounds i8, ptr %0, i64 5
  %2818 = load i8, ptr %2817, align 1, !tbaa !5
  %2819 = icmp eq i8 %2818, 97
  br i1 %2819, label %2820, label %3939

2820:                                             ; preds = %2816
  %2821 = getelementptr inbounds i8, ptr %0, i64 6
  %2822 = load i8, ptr %2821, align 1, !tbaa !5
  %2823 = icmp eq i8 %2822, 116
  br i1 %2823, label %2824, label %3939

2824:                                             ; preds = %2820
  %2825 = getelementptr inbounds i8, ptr %0, i64 7
  %2826 = load i8, ptr %2825, align 1, !tbaa !5
  %2827 = icmp eq i8 %2826, 101
  br i1 %2827, label %3947, label %3939

2828:                                             ; preds = %3
  %2829 = load i8, ptr %0, align 1, !tbaa !5
  switch i8 %2829, label %3939 [
    i8 85, label %2830
    i8 101, label %2862
    i8 103, label %2933
    i8 108, label %2965
    i8 112, label %2997
    i8 113, label %3029
    i8 114, label %3061
    i8 115, label %3093
    i8 119, label %3125
  ]

2830:                                             ; preds = %2828
  %2831 = getelementptr inbounds i8, ptr %0, i64 1
  %2832 = load i8, ptr %2831, align 1, !tbaa !5
  %2833 = icmp eq i8 %2832, 78
  br i1 %2833, label %2834, label %3939

2834:                                             ; preds = %2830
  %2835 = getelementptr inbounds i8, ptr %0, i64 2
  %2836 = load i8, ptr %2835, align 1, !tbaa !5
  %2837 = icmp eq i8 %2836, 73
  br i1 %2837, label %2838, label %3939

2838:                                             ; preds = %2834
  %2839 = getelementptr inbounds i8, ptr %0, i64 3
  %2840 = load i8, ptr %2839, align 1, !tbaa !5
  %2841 = icmp eq i8 %2840, 84
  br i1 %2841, label %2842, label %3939

2842:                                             ; preds = %2838
  %2843 = getelementptr inbounds i8, ptr %0, i64 4
  %2844 = load i8, ptr %2843, align 1, !tbaa !5
  %2845 = icmp eq i8 %2844, 67
  br i1 %2845, label %2846, label %3939

2846:                                             ; preds = %2842
  %2847 = getelementptr inbounds i8, ptr %0, i64 5
  %2848 = load i8, ptr %2847, align 1, !tbaa !5
  %2849 = icmp eq i8 %2848, 72
  br i1 %2849, label %2850, label %3939

2850:                                             ; preds = %2846
  %2851 = getelementptr inbounds i8, ptr %0, i64 6
  %2852 = load i8, ptr %2851, align 1, !tbaa !5
  %2853 = icmp eq i8 %2852, 69
  br i1 %2853, label %2854, label %3939

2854:                                             ; preds = %2850
  %2855 = getelementptr inbounds i8, ptr %0, i64 7
  %2856 = load i8, ptr %2855, align 1, !tbaa !5
  %2857 = icmp eq i8 %2856, 67
  br i1 %2857, label %2858, label %3939

2858:                                             ; preds = %2854
  %2859 = getelementptr inbounds i8, ptr %0, i64 8
  %2860 = load i8, ptr %2859, align 1, !tbaa !5
  %2861 = icmp eq i8 %2860, 75
  br i1 %2861, label %3947, label %3939

2862:                                             ; preds = %2828
  %2863 = getelementptr inbounds i8, ptr %0, i64 1
  %2864 = load i8, ptr %2863, align 1, !tbaa !5
  switch i8 %2864, label %3939 [
    i8 110, label %2865
    i8 118, label %2893
  ]

2865:                                             ; preds = %2862
  %2866 = getelementptr inbounds i8, ptr %0, i64 2
  %2867 = load i8, ptr %2866, align 1, !tbaa !5
  %2868 = icmp eq i8 %2867, 100
  br i1 %2868, label %2869, label %3939

2869:                                             ; preds = %2865
  %2870 = getelementptr inbounds i8, ptr %0, i64 3
  %2871 = load i8, ptr %2870, align 1, !tbaa !5
  %2872 = icmp eq i8 %2871, 110
  br i1 %2872, label %2873, label %3939

2873:                                             ; preds = %2869
  %2874 = getelementptr inbounds i8, ptr %0, i64 4
  %2875 = load i8, ptr %2874, align 1, !tbaa !5
  %2876 = icmp eq i8 %2875, 101
  br i1 %2876, label %2877, label %3939

2877:                                             ; preds = %2873
  %2878 = getelementptr inbounds i8, ptr %0, i64 5
  %2879 = load i8, ptr %2878, align 1, !tbaa !5
  %2880 = icmp eq i8 %2879, 116
  br i1 %2880, label %2881, label %3939

2881:                                             ; preds = %2877
  %2882 = getelementptr inbounds i8, ptr %0, i64 6
  %2883 = load i8, ptr %2882, align 1, !tbaa !5
  %2884 = icmp eq i8 %2883, 101
  br i1 %2884, label %2885, label %3939

2885:                                             ; preds = %2881
  %2886 = getelementptr inbounds i8, ptr %0, i64 7
  %2887 = load i8, ptr %2886, align 1, !tbaa !5
  %2888 = icmp eq i8 %2887, 110
  br i1 %2888, label %2889, label %3939

2889:                                             ; preds = %2885
  %2890 = getelementptr inbounds i8, ptr %0, i64 8
  %2891 = load i8, ptr %2890, align 1, !tbaa !5
  %2892 = icmp eq i8 %2891, 116
  br i1 %2892, label %3947, label %3939

2893:                                             ; preds = %2862
  %2894 = getelementptr inbounds i8, ptr %0, i64 2
  %2895 = load i8, ptr %2894, align 1, !tbaa !5
  %2896 = icmp eq i8 %2895, 97
  br i1 %2896, label %2897, label %3939

2897:                                             ; preds = %2893
  %2898 = getelementptr inbounds i8, ptr %0, i64 3
  %2899 = load i8, ptr %2898, align 1, !tbaa !5
  %2900 = icmp eq i8 %2899, 108
  br i1 %2900, label %2901, label %3939

2901:                                             ; preds = %2897
  %2902 = getelementptr inbounds i8, ptr %0, i64 4
  %2903 = load i8, ptr %2902, align 1, !tbaa !5
  %2904 = icmp eq i8 %2903, 98
  br i1 %2904, label %2905, label %3939

2905:                                             ; preds = %2901
  %2906 = getelementptr inbounds i8, ptr %0, i64 5
  %2907 = load i8, ptr %2906, align 1, !tbaa !5
  %2908 = icmp eq i8 %2907, 121
  br i1 %2908, label %2909, label %3939

2909:                                             ; preds = %2905
  %2910 = getelementptr inbounds i8, ptr %0, i64 6
  %2911 = load i8, ptr %2910, align 1, !tbaa !5
  %2912 = icmp eq i8 %2911, 116
  br i1 %2912, label %2913, label %3939

2913:                                             ; preds = %2909
  %2914 = getelementptr inbounds i8, ptr %0, i64 7
  %2915 = load i8, ptr %2914, align 1, !tbaa !5
  %2916 = icmp eq i8 %2915, 101
  br i1 %2916, label %2917, label %3939

2917:                                             ; preds = %2913
  %2918 = getelementptr inbounds i8, ptr %0, i64 8
  %2919 = load i8, ptr %2918, align 1, !tbaa !5
  %2920 = icmp eq i8 %2919, 115
  br i1 %2920, label %2921, label %3939

2921:                                             ; preds = %2917
  br i1 %2, label %3947, label %2922

2922:                                             ; preds = %2921
  %2923 = load ptr, ptr @PL_curcop, align 8, !tbaa !8
  %2924 = getelementptr %struct.cop, ptr %2923, i64 0, i32 10
  %2925 = load i32, ptr %2924, align 8, !tbaa !10
  %2926 = and i32 %2925, 469762048
  switch i32 %2926, label %3942 [
    i32 201326592, label %3947
    i32 469762048, label %2927
  ]

2927:                                             ; preds = %2922
  %2928 = and i32 %2925, 131072
  %2929 = icmp eq i32 %2928, 0
  br i1 %2929, label %3947, label %2930

2930:                                             ; preds = %2927
  %2931 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.6, i64 noundef 9) #2
  %2932 = select i1 %2931, i32 -58, i32 0
  br label %3947

2933:                                             ; preds = %2828
  %2934 = getelementptr inbounds i8, ptr %0, i64 1
  %2935 = load i8, ptr %2934, align 1, !tbaa !5
  %2936 = icmp eq i8 %2935, 101
  br i1 %2936, label %2937, label %3939

2937:                                             ; preds = %2933
  %2938 = getelementptr inbounds i8, ptr %0, i64 2
  %2939 = load i8, ptr %2938, align 1, !tbaa !5
  %2940 = icmp eq i8 %2939, 116
  br i1 %2940, label %2941, label %3939

2941:                                             ; preds = %2937
  %2942 = getelementptr inbounds i8, ptr %0, i64 3
  %2943 = load i8, ptr %2942, align 1, !tbaa !5
  %2944 = icmp eq i8 %2943, 110
  br i1 %2944, label %2945, label %3939

2945:                                             ; preds = %2941
  %2946 = getelementptr inbounds i8, ptr %0, i64 4
  %2947 = load i8, ptr %2946, align 1, !tbaa !5
  %2948 = icmp eq i8 %2947, 101
  br i1 %2948, label %2949, label %3939

2949:                                             ; preds = %2945
  %2950 = getelementptr inbounds i8, ptr %0, i64 5
  %2951 = load i8, ptr %2950, align 1, !tbaa !5
  %2952 = icmp eq i8 %2951, 116
  br i1 %2952, label %2953, label %3939

2953:                                             ; preds = %2949
  %2954 = getelementptr inbounds i8, ptr %0, i64 6
  %2955 = load i8, ptr %2954, align 1, !tbaa !5
  %2956 = icmp eq i8 %2955, 101
  br i1 %2956, label %2957, label %3939

2957:                                             ; preds = %2953
  %2958 = getelementptr inbounds i8, ptr %0, i64 7
  %2959 = load i8, ptr %2958, align 1, !tbaa !5
  %2960 = icmp eq i8 %2959, 110
  br i1 %2960, label %2961, label %3939

2961:                                             ; preds = %2957
  %2962 = getelementptr inbounds i8, ptr %0, i64 8
  %2963 = load i8, ptr %2962, align 1, !tbaa !5
  %2964 = icmp eq i8 %2963, 116
  br i1 %2964, label %3947, label %3939

2965:                                             ; preds = %2828
  %2966 = getelementptr inbounds i8, ptr %0, i64 1
  %2967 = load i8, ptr %2966, align 1, !tbaa !5
  %2968 = icmp eq i8 %2967, 111
  br i1 %2968, label %2969, label %3939

2969:                                             ; preds = %2965
  %2970 = getelementptr inbounds i8, ptr %0, i64 2
  %2971 = load i8, ptr %2970, align 1, !tbaa !5
  %2972 = icmp eq i8 %2971, 99
  br i1 %2972, label %2973, label %3939

2973:                                             ; preds = %2969
  %2974 = getelementptr inbounds i8, ptr %0, i64 3
  %2975 = load i8, ptr %2974, align 1, !tbaa !5
  %2976 = icmp eq i8 %2975, 97
  br i1 %2976, label %2977, label %3939

2977:                                             ; preds = %2973
  %2978 = getelementptr inbounds i8, ptr %0, i64 4
  %2979 = load i8, ptr %2978, align 1, !tbaa !5
  %2980 = icmp eq i8 %2979, 108
  br i1 %2980, label %2981, label %3939

2981:                                             ; preds = %2977
  %2982 = getelementptr inbounds i8, ptr %0, i64 5
  %2983 = load i8, ptr %2982, align 1, !tbaa !5
  %2984 = icmp eq i8 %2983, 116
  br i1 %2984, label %2985, label %3939

2985:                                             ; preds = %2981
  %2986 = getelementptr inbounds i8, ptr %0, i64 6
  %2987 = load i8, ptr %2986, align 1, !tbaa !5
  %2988 = icmp eq i8 %2987, 105
  br i1 %2988, label %2989, label %3939

2989:                                             ; preds = %2985
  %2990 = getelementptr inbounds i8, ptr %0, i64 7
  %2991 = load i8, ptr %2990, align 1, !tbaa !5
  %2992 = icmp eq i8 %2991, 109
  br i1 %2992, label %2993, label %3939

2993:                                             ; preds = %2989
  %2994 = getelementptr inbounds i8, ptr %0, i64 8
  %2995 = load i8, ptr %2994, align 1, !tbaa !5
  %2996 = icmp eq i8 %2995, 101
  br i1 %2996, label %3947, label %3939

2997:                                             ; preds = %2828
  %2998 = getelementptr inbounds i8, ptr %0, i64 1
  %2999 = load i8, ptr %2998, align 1, !tbaa !5
  %3000 = icmp eq i8 %2999, 114
  br i1 %3000, label %3001, label %3939

3001:                                             ; preds = %2997
  %3002 = getelementptr inbounds i8, ptr %0, i64 2
  %3003 = load i8, ptr %3002, align 1, !tbaa !5
  %3004 = icmp eq i8 %3003, 111
  br i1 %3004, label %3005, label %3939

3005:                                             ; preds = %3001
  %3006 = getelementptr inbounds i8, ptr %0, i64 3
  %3007 = load i8, ptr %3006, align 1, !tbaa !5
  %3008 = icmp eq i8 %3007, 116
  br i1 %3008, label %3009, label %3939

3009:                                             ; preds = %3005
  %3010 = getelementptr inbounds i8, ptr %0, i64 4
  %3011 = load i8, ptr %3010, align 1, !tbaa !5
  %3012 = icmp eq i8 %3011, 111
  br i1 %3012, label %3013, label %3939

3013:                                             ; preds = %3009
  %3014 = getelementptr inbounds i8, ptr %0, i64 5
  %3015 = load i8, ptr %3014, align 1, !tbaa !5
  %3016 = icmp eq i8 %3015, 116
  br i1 %3016, label %3017, label %3939

3017:                                             ; preds = %3013
  %3018 = getelementptr inbounds i8, ptr %0, i64 6
  %3019 = load i8, ptr %3018, align 1, !tbaa !5
  %3020 = icmp eq i8 %3019, 121
  br i1 %3020, label %3021, label %3939

3021:                                             ; preds = %3017
  %3022 = getelementptr inbounds i8, ptr %0, i64 7
  %3023 = load i8, ptr %3022, align 1, !tbaa !5
  %3024 = icmp eq i8 %3023, 112
  br i1 %3024, label %3025, label %3939

3025:                                             ; preds = %3021
  %3026 = getelementptr inbounds i8, ptr %0, i64 8
  %3027 = load i8, ptr %3026, align 1, !tbaa !5
  %3028 = icmp eq i8 %3027, 101
  br i1 %3028, label %3947, label %3939

3029:                                             ; preds = %2828
  %3030 = getelementptr inbounds i8, ptr %0, i64 1
  %3031 = load i8, ptr %3030, align 1, !tbaa !5
  %3032 = icmp eq i8 %3031, 117
  br i1 %3032, label %3033, label %3939

3033:                                             ; preds = %3029
  %3034 = getelementptr inbounds i8, ptr %0, i64 2
  %3035 = load i8, ptr %3034, align 1, !tbaa !5
  %3036 = icmp eq i8 %3035, 111
  br i1 %3036, label %3037, label %3939

3037:                                             ; preds = %3033
  %3038 = getelementptr inbounds i8, ptr %0, i64 3
  %3039 = load i8, ptr %3038, align 1, !tbaa !5
  %3040 = icmp eq i8 %3039, 116
  br i1 %3040, label %3041, label %3939

3041:                                             ; preds = %3037
  %3042 = getelementptr inbounds i8, ptr %0, i64 4
  %3043 = load i8, ptr %3042, align 1, !tbaa !5
  %3044 = icmp eq i8 %3043, 101
  br i1 %3044, label %3045, label %3939

3045:                                             ; preds = %3041
  %3046 = getelementptr inbounds i8, ptr %0, i64 5
  %3047 = load i8, ptr %3046, align 1, !tbaa !5
  %3048 = icmp eq i8 %3047, 109
  br i1 %3048, label %3049, label %3939

3049:                                             ; preds = %3045
  %3050 = getelementptr inbounds i8, ptr %0, i64 6
  %3051 = load i8, ptr %3050, align 1, !tbaa !5
  %3052 = icmp eq i8 %3051, 101
  br i1 %3052, label %3053, label %3939

3053:                                             ; preds = %3049
  %3054 = getelementptr inbounds i8, ptr %0, i64 7
  %3055 = load i8, ptr %3054, align 1, !tbaa !5
  %3056 = icmp eq i8 %3055, 116
  br i1 %3056, label %3057, label %3939

3057:                                             ; preds = %3053
  %3058 = getelementptr inbounds i8, ptr %0, i64 8
  %3059 = load i8, ptr %3058, align 1, !tbaa !5
  %3060 = icmp eq i8 %3059, 97
  br i1 %3060, label %3947, label %3939

3061:                                             ; preds = %2828
  %3062 = getelementptr inbounds i8, ptr %0, i64 1
  %3063 = load i8, ptr %3062, align 1, !tbaa !5
  %3064 = icmp eq i8 %3063, 101
  br i1 %3064, label %3065, label %3939

3065:                                             ; preds = %3061
  %3066 = getelementptr inbounds i8, ptr %0, i64 2
  %3067 = load i8, ptr %3066, align 1, !tbaa !5
  %3068 = icmp eq i8 %3067, 119
  br i1 %3068, label %3069, label %3939

3069:                                             ; preds = %3065
  %3070 = getelementptr inbounds i8, ptr %0, i64 3
  %3071 = load i8, ptr %3070, align 1, !tbaa !5
  %3072 = icmp eq i8 %3071, 105
  br i1 %3072, label %3073, label %3939

3073:                                             ; preds = %3069
  %3074 = getelementptr inbounds i8, ptr %0, i64 4
  %3075 = load i8, ptr %3074, align 1, !tbaa !5
  %3076 = icmp eq i8 %3075, 110
  br i1 %3076, label %3077, label %3939

3077:                                             ; preds = %3073
  %3078 = getelementptr inbounds i8, ptr %0, i64 5
  %3079 = load i8, ptr %3078, align 1, !tbaa !5
  %3080 = icmp eq i8 %3079, 100
  br i1 %3080, label %3081, label %3939

3081:                                             ; preds = %3077
  %3082 = getelementptr inbounds i8, ptr %0, i64 6
  %3083 = load i8, ptr %3082, align 1, !tbaa !5
  %3084 = icmp eq i8 %3083, 100
  br i1 %3084, label %3085, label %3939

3085:                                             ; preds = %3081
  %3086 = getelementptr inbounds i8, ptr %0, i64 7
  %3087 = load i8, ptr %3086, align 1, !tbaa !5
  %3088 = icmp eq i8 %3087, 105
  br i1 %3088, label %3089, label %3939

3089:                                             ; preds = %3085
  %3090 = getelementptr inbounds i8, ptr %0, i64 8
  %3091 = load i8, ptr %3090, align 1, !tbaa !5
  %3092 = icmp eq i8 %3091, 114
  br i1 %3092, label %3947, label %3939

3093:                                             ; preds = %2828
  %3094 = getelementptr inbounds i8, ptr %0, i64 1
  %3095 = load i8, ptr %3094, align 1, !tbaa !5
  %3096 = icmp eq i8 %3095, 101
  br i1 %3096, label %3097, label %3939

3097:                                             ; preds = %3093
  %3098 = getelementptr inbounds i8, ptr %0, i64 2
  %3099 = load i8, ptr %3098, align 1, !tbaa !5
  %3100 = icmp eq i8 %3099, 116
  br i1 %3100, label %3101, label %3939

3101:                                             ; preds = %3097
  %3102 = getelementptr inbounds i8, ptr %0, i64 3
  %3103 = load i8, ptr %3102, align 1, !tbaa !5
  %3104 = icmp eq i8 %3103, 110
  br i1 %3104, label %3105, label %3939

3105:                                             ; preds = %3101
  %3106 = getelementptr inbounds i8, ptr %0, i64 4
  %3107 = load i8, ptr %3106, align 1, !tbaa !5
  %3108 = icmp eq i8 %3107, 101
  br i1 %3108, label %3109, label %3939

3109:                                             ; preds = %3105
  %3110 = getelementptr inbounds i8, ptr %0, i64 5
  %3111 = load i8, ptr %3110, align 1, !tbaa !5
  %3112 = icmp eq i8 %3111, 116
  br i1 %3112, label %3113, label %3939

3113:                                             ; preds = %3109
  %3114 = getelementptr inbounds i8, ptr %0, i64 6
  %3115 = load i8, ptr %3114, align 1, !tbaa !5
  %3116 = icmp eq i8 %3115, 101
  br i1 %3116, label %3117, label %3939

3117:                                             ; preds = %3113
  %3118 = getelementptr inbounds i8, ptr %0, i64 7
  %3119 = load i8, ptr %3118, align 1, !tbaa !5
  %3120 = icmp eq i8 %3119, 110
  br i1 %3120, label %3121, label %3939

3121:                                             ; preds = %3117
  %3122 = getelementptr inbounds i8, ptr %0, i64 8
  %3123 = load i8, ptr %3122, align 1, !tbaa !5
  %3124 = icmp eq i8 %3123, 116
  br i1 %3124, label %3947, label %3939

3125:                                             ; preds = %2828
  %3126 = getelementptr inbounds i8, ptr %0, i64 1
  %3127 = load i8, ptr %3126, align 1, !tbaa !5
  %3128 = icmp eq i8 %3127, 97
  br i1 %3128, label %3129, label %3939

3129:                                             ; preds = %3125
  %3130 = getelementptr inbounds i8, ptr %0, i64 2
  %3131 = load i8, ptr %3130, align 1, !tbaa !5
  %3132 = icmp eq i8 %3131, 110
  br i1 %3132, label %3133, label %3939

3133:                                             ; preds = %3129
  %3134 = getelementptr inbounds i8, ptr %0, i64 3
  %3135 = load i8, ptr %3134, align 1, !tbaa !5
  %3136 = icmp eq i8 %3135, 116
  br i1 %3136, label %3137, label %3939

3137:                                             ; preds = %3133
  %3138 = getelementptr inbounds i8, ptr %0, i64 4
  %3139 = load i8, ptr %3138, align 1, !tbaa !5
  %3140 = icmp eq i8 %3139, 97
  br i1 %3140, label %3141, label %3939

3141:                                             ; preds = %3137
  %3142 = getelementptr inbounds i8, ptr %0, i64 5
  %3143 = load i8, ptr %3142, align 1, !tbaa !5
  %3144 = icmp eq i8 %3143, 114
  br i1 %3144, label %3145, label %3939

3145:                                             ; preds = %3141
  %3146 = getelementptr inbounds i8, ptr %0, i64 6
  %3147 = load i8, ptr %3146, align 1, !tbaa !5
  %3148 = icmp eq i8 %3147, 114
  br i1 %3148, label %3149, label %3939

3149:                                             ; preds = %3145
  %3150 = getelementptr inbounds i8, ptr %0, i64 7
  %3151 = load i8, ptr %3150, align 1, !tbaa !5
  %3152 = icmp eq i8 %3151, 97
  br i1 %3152, label %3153, label %3939

3153:                                             ; preds = %3149
  %3154 = getelementptr inbounds i8, ptr %0, i64 8
  %3155 = load i8, ptr %3154, align 1, !tbaa !5
  %3156 = icmp eq i8 %3155, 121
  br i1 %3156, label %3947, label %3939

3157:                                             ; preds = %3
  %3158 = load i8, ptr %0, align 1, !tbaa !5
  switch i8 %3158, label %3939 [
    i8 101, label %3159
    i8 103, label %3218
    i8 115, label %3296
  ]

3159:                                             ; preds = %3157
  %3160 = getelementptr inbounds i8, ptr %0, i64 1
  %3161 = load i8, ptr %3160, align 1, !tbaa !5
  %3162 = icmp eq i8 %3161, 110
  br i1 %3162, label %3163, label %3939

3163:                                             ; preds = %3159
  %3164 = getelementptr inbounds i8, ptr %0, i64 2
  %3165 = load i8, ptr %3164, align 1, !tbaa !5
  %3166 = icmp eq i8 %3165, 100
  br i1 %3166, label %3167, label %3939

3167:                                             ; preds = %3163
  %3168 = getelementptr inbounds i8, ptr %0, i64 3
  %3169 = load i8, ptr %3168, align 1, !tbaa !5
  switch i8 %3169, label %3939 [
    i8 104, label %3170
    i8 115, label %3194
  ]

3170:                                             ; preds = %3167
  %3171 = getelementptr inbounds i8, ptr %0, i64 4
  %3172 = load i8, ptr %3171, align 1, !tbaa !5
  %3173 = icmp eq i8 %3172, 111
  br i1 %3173, label %3174, label %3939

3174:                                             ; preds = %3170
  %3175 = getelementptr inbounds i8, ptr %0, i64 5
  %3176 = load i8, ptr %3175, align 1, !tbaa !5
  %3177 = icmp eq i8 %3176, 115
  br i1 %3177, label %3178, label %3939

3178:                                             ; preds = %3174
  %3179 = getelementptr inbounds i8, ptr %0, i64 6
  %3180 = load i8, ptr %3179, align 1, !tbaa !5
  %3181 = icmp eq i8 %3180, 116
  br i1 %3181, label %3182, label %3939

3182:                                             ; preds = %3178
  %3183 = getelementptr inbounds i8, ptr %0, i64 7
  %3184 = load i8, ptr %3183, align 1, !tbaa !5
  %3185 = icmp eq i8 %3184, 101
  br i1 %3185, label %3186, label %3939

3186:                                             ; preds = %3182
  %3187 = getelementptr inbounds i8, ptr %0, i64 8
  %3188 = load i8, ptr %3187, align 1, !tbaa !5
  %3189 = icmp eq i8 %3188, 110
  br i1 %3189, label %3190, label %3939

3190:                                             ; preds = %3186
  %3191 = getelementptr inbounds i8, ptr %0, i64 9
  %3192 = load i8, ptr %3191, align 1, !tbaa !5
  %3193 = icmp eq i8 %3192, 116
  br i1 %3193, label %3947, label %3939

3194:                                             ; preds = %3167
  %3195 = getelementptr inbounds i8, ptr %0, i64 4
  %3196 = load i8, ptr %3195, align 1, !tbaa !5
  %3197 = icmp eq i8 %3196, 101
  br i1 %3197, label %3198, label %3939

3198:                                             ; preds = %3194
  %3199 = getelementptr inbounds i8, ptr %0, i64 5
  %3200 = load i8, ptr %3199, align 1, !tbaa !5
  %3201 = icmp eq i8 %3200, 114
  br i1 %3201, label %3202, label %3939

3202:                                             ; preds = %3198
  %3203 = getelementptr inbounds i8, ptr %0, i64 6
  %3204 = load i8, ptr %3203, align 1, !tbaa !5
  %3205 = icmp eq i8 %3204, 118
  br i1 %3205, label %3206, label %3939

3206:                                             ; preds = %3202
  %3207 = getelementptr inbounds i8, ptr %0, i64 7
  %3208 = load i8, ptr %3207, align 1, !tbaa !5
  %3209 = icmp eq i8 %3208, 101
  br i1 %3209, label %3210, label %3939

3210:                                             ; preds = %3206
  %3211 = getelementptr inbounds i8, ptr %0, i64 8
  %3212 = load i8, ptr %3211, align 1, !tbaa !5
  %3213 = icmp eq i8 %3212, 110
  br i1 %3213, label %3214, label %3939

3214:                                             ; preds = %3210
  %3215 = getelementptr inbounds i8, ptr %0, i64 9
  %3216 = load i8, ptr %3215, align 1, !tbaa !5
  %3217 = icmp eq i8 %3216, 116
  br i1 %3217, label %3947, label %3939

3218:                                             ; preds = %3157
  %3219 = getelementptr inbounds i8, ptr %0, i64 1
  %3220 = load i8, ptr %3219, align 1, !tbaa !5
  %3221 = icmp eq i8 %3220, 101
  br i1 %3221, label %3222, label %3939

3222:                                             ; preds = %3218
  %3223 = getelementptr inbounds i8, ptr %0, i64 2
  %3224 = load i8, ptr %3223, align 1, !tbaa !5
  %3225 = icmp eq i8 %3224, 116
  br i1 %3225, label %3226, label %3939

3226:                                             ; preds = %3222
  %3227 = getelementptr inbounds i8, ptr %0, i64 3
  %3228 = load i8, ptr %3227, align 1, !tbaa !5
  switch i8 %3228, label %3939 [
    i8 104, label %3229
    i8 115, label %3253
  ]

3229:                                             ; preds = %3226
  %3230 = getelementptr inbounds i8, ptr %0, i64 4
  %3231 = load i8, ptr %3230, align 1, !tbaa !5
  %3232 = icmp eq i8 %3231, 111
  br i1 %3232, label %3233, label %3939

3233:                                             ; preds = %3229
  %3234 = getelementptr inbounds i8, ptr %0, i64 5
  %3235 = load i8, ptr %3234, align 1, !tbaa !5
  %3236 = icmp eq i8 %3235, 115
  br i1 %3236, label %3237, label %3939

3237:                                             ; preds = %3233
  %3238 = getelementptr inbounds i8, ptr %0, i64 6
  %3239 = load i8, ptr %3238, align 1, !tbaa !5
  %3240 = icmp eq i8 %3239, 116
  br i1 %3240, label %3241, label %3939

3241:                                             ; preds = %3237
  %3242 = getelementptr inbounds i8, ptr %0, i64 7
  %3243 = load i8, ptr %3242, align 1, !tbaa !5
  %3244 = icmp eq i8 %3243, 101
  br i1 %3244, label %3245, label %3939

3245:                                             ; preds = %3241
  %3246 = getelementptr inbounds i8, ptr %0, i64 8
  %3247 = load i8, ptr %3246, align 1, !tbaa !5
  %3248 = icmp eq i8 %3247, 110
  br i1 %3248, label %3249, label %3939

3249:                                             ; preds = %3245
  %3250 = getelementptr inbounds i8, ptr %0, i64 9
  %3251 = load i8, ptr %3250, align 1, !tbaa !5
  %3252 = icmp eq i8 %3251, 116
  br i1 %3252, label %3947, label %3939

3253:                                             ; preds = %3226
  %3254 = getelementptr inbounds i8, ptr %0, i64 4
  %3255 = load i8, ptr %3254, align 1, !tbaa !5
  switch i8 %3255, label %3939 [
    i8 101, label %3256
    i8 111, label %3276
  ]

3256:                                             ; preds = %3253
  %3257 = getelementptr inbounds i8, ptr %0, i64 5
  %3258 = load i8, ptr %3257, align 1, !tbaa !5
  %3259 = icmp eq i8 %3258, 114
  br i1 %3259, label %3260, label %3939

3260:                                             ; preds = %3256
  %3261 = getelementptr inbounds i8, ptr %0, i64 6
  %3262 = load i8, ptr %3261, align 1, !tbaa !5
  %3263 = icmp eq i8 %3262, 118
  br i1 %3263, label %3264, label %3939

3264:                                             ; preds = %3260
  %3265 = getelementptr inbounds i8, ptr %0, i64 7
  %3266 = load i8, ptr %3265, align 1, !tbaa !5
  %3267 = icmp eq i8 %3266, 101
  br i1 %3267, label %3268, label %3939

3268:                                             ; preds = %3264
  %3269 = getelementptr inbounds i8, ptr %0, i64 8
  %3270 = load i8, ptr %3269, align 1, !tbaa !5
  %3271 = icmp eq i8 %3270, 110
  br i1 %3271, label %3272, label %3939

3272:                                             ; preds = %3268
  %3273 = getelementptr inbounds i8, ptr %0, i64 9
  %3274 = load i8, ptr %3273, align 1, !tbaa !5
  %3275 = icmp eq i8 %3274, 116
  br i1 %3275, label %3947, label %3939

3276:                                             ; preds = %3253
  %3277 = getelementptr inbounds i8, ptr %0, i64 5
  %3278 = load i8, ptr %3277, align 1, !tbaa !5
  %3279 = icmp eq i8 %3278, 99
  br i1 %3279, label %3280, label %3939

3280:                                             ; preds = %3276
  %3281 = getelementptr inbounds i8, ptr %0, i64 6
  %3282 = load i8, ptr %3281, align 1, !tbaa !5
  %3283 = icmp eq i8 %3282, 107
  br i1 %3283, label %3284, label %3939

3284:                                             ; preds = %3280
  %3285 = getelementptr inbounds i8, ptr %0, i64 7
  %3286 = load i8, ptr %3285, align 1, !tbaa !5
  %3287 = icmp eq i8 %3286, 111
  br i1 %3287, label %3288, label %3939

3288:                                             ; preds = %3284
  %3289 = getelementptr inbounds i8, ptr %0, i64 8
  %3290 = load i8, ptr %3289, align 1, !tbaa !5
  %3291 = icmp eq i8 %3290, 112
  br i1 %3291, label %3292, label %3939

3292:                                             ; preds = %3288
  %3293 = getelementptr inbounds i8, ptr %0, i64 9
  %3294 = load i8, ptr %3293, align 1, !tbaa !5
  %3295 = icmp eq i8 %3294, 116
  br i1 %3295, label %3947, label %3939

3296:                                             ; preds = %3157
  %3297 = getelementptr inbounds i8, ptr %0, i64 1
  %3298 = load i8, ptr %3297, align 1, !tbaa !5
  switch i8 %3298, label %3939 [
    i8 101, label %3299
    i8 111, label %3373
  ]

3299:                                             ; preds = %3296
  %3300 = getelementptr inbounds i8, ptr %0, i64 2
  %3301 = load i8, ptr %3300, align 1, !tbaa !5
  %3302 = icmp eq i8 %3301, 116
  br i1 %3302, label %3303, label %3939

3303:                                             ; preds = %3299
  %3304 = getelementptr inbounds i8, ptr %0, i64 3
  %3305 = load i8, ptr %3304, align 1, !tbaa !5
  switch i8 %3305, label %3939 [
    i8 104, label %3306
    i8 115, label %3330
  ]

3306:                                             ; preds = %3303
  %3307 = getelementptr inbounds i8, ptr %0, i64 4
  %3308 = load i8, ptr %3307, align 1, !tbaa !5
  %3309 = icmp eq i8 %3308, 111
  br i1 %3309, label %3310, label %3939

3310:                                             ; preds = %3306
  %3311 = getelementptr inbounds i8, ptr %0, i64 5
  %3312 = load i8, ptr %3311, align 1, !tbaa !5
  %3313 = icmp eq i8 %3312, 115
  br i1 %3313, label %3314, label %3939

3314:                                             ; preds = %3310
  %3315 = getelementptr inbounds i8, ptr %0, i64 6
  %3316 = load i8, ptr %3315, align 1, !tbaa !5
  %3317 = icmp eq i8 %3316, 116
  br i1 %3317, label %3318, label %3939

3318:                                             ; preds = %3314
  %3319 = getelementptr inbounds i8, ptr %0, i64 7
  %3320 = load i8, ptr %3319, align 1, !tbaa !5
  %3321 = icmp eq i8 %3320, 101
  br i1 %3321, label %3322, label %3939

3322:                                             ; preds = %3318
  %3323 = getelementptr inbounds i8, ptr %0, i64 8
  %3324 = load i8, ptr %3323, align 1, !tbaa !5
  %3325 = icmp eq i8 %3324, 110
  br i1 %3325, label %3326, label %3939

3326:                                             ; preds = %3322
  %3327 = getelementptr inbounds i8, ptr %0, i64 9
  %3328 = load i8, ptr %3327, align 1, !tbaa !5
  %3329 = icmp eq i8 %3328, 116
  br i1 %3329, label %3947, label %3939

3330:                                             ; preds = %3303
  %3331 = getelementptr inbounds i8, ptr %0, i64 4
  %3332 = load i8, ptr %3331, align 1, !tbaa !5
  switch i8 %3332, label %3939 [
    i8 101, label %3333
    i8 111, label %3353
  ]

3333:                                             ; preds = %3330
  %3334 = getelementptr inbounds i8, ptr %0, i64 5
  %3335 = load i8, ptr %3334, align 1, !tbaa !5
  %3336 = icmp eq i8 %3335, 114
  br i1 %3336, label %3337, label %3939

3337:                                             ; preds = %3333
  %3338 = getelementptr inbounds i8, ptr %0, i64 6
  %3339 = load i8, ptr %3338, align 1, !tbaa !5
  %3340 = icmp eq i8 %3339, 118
  br i1 %3340, label %3341, label %3939

3341:                                             ; preds = %3337
  %3342 = getelementptr inbounds i8, ptr %0, i64 7
  %3343 = load i8, ptr %3342, align 1, !tbaa !5
  %3344 = icmp eq i8 %3343, 101
  br i1 %3344, label %3345, label %3939

3345:                                             ; preds = %3341
  %3346 = getelementptr inbounds i8, ptr %0, i64 8
  %3347 = load i8, ptr %3346, align 1, !tbaa !5
  %3348 = icmp eq i8 %3347, 110
  br i1 %3348, label %3349, label %3939

3349:                                             ; preds = %3345
  %3350 = getelementptr inbounds i8, ptr %0, i64 9
  %3351 = load i8, ptr %3350, align 1, !tbaa !5
  %3352 = icmp eq i8 %3351, 116
  br i1 %3352, label %3947, label %3939

3353:                                             ; preds = %3330
  %3354 = getelementptr inbounds i8, ptr %0, i64 5
  %3355 = load i8, ptr %3354, align 1, !tbaa !5
  %3356 = icmp eq i8 %3355, 99
  br i1 %3356, label %3357, label %3939

3357:                                             ; preds = %3353
  %3358 = getelementptr inbounds i8, ptr %0, i64 6
  %3359 = load i8, ptr %3358, align 1, !tbaa !5
  %3360 = icmp eq i8 %3359, 107
  br i1 %3360, label %3361, label %3939

3361:                                             ; preds = %3357
  %3362 = getelementptr inbounds i8, ptr %0, i64 7
  %3363 = load i8, ptr %3362, align 1, !tbaa !5
  %3364 = icmp eq i8 %3363, 111
  br i1 %3364, label %3365, label %3939

3365:                                             ; preds = %3361
  %3366 = getelementptr inbounds i8, ptr %0, i64 8
  %3367 = load i8, ptr %3366, align 1, !tbaa !5
  %3368 = icmp eq i8 %3367, 112
  br i1 %3368, label %3369, label %3939

3369:                                             ; preds = %3365
  %3370 = getelementptr inbounds i8, ptr %0, i64 9
  %3371 = load i8, ptr %3370, align 1, !tbaa !5
  %3372 = icmp eq i8 %3371, 116
  br i1 %3372, label %3947, label %3939

3373:                                             ; preds = %3296
  %3374 = getelementptr inbounds i8, ptr %0, i64 2
  %3375 = load i8, ptr %3374, align 1, !tbaa !5
  %3376 = icmp eq i8 %3375, 99
  br i1 %3376, label %3377, label %3939

3377:                                             ; preds = %3373
  %3378 = getelementptr inbounds i8, ptr %0, i64 3
  %3379 = load i8, ptr %3378, align 1, !tbaa !5
  %3380 = icmp eq i8 %3379, 107
  br i1 %3380, label %3381, label %3939

3381:                                             ; preds = %3377
  %3382 = getelementptr inbounds i8, ptr %0, i64 4
  %3383 = load i8, ptr %3382, align 1, !tbaa !5
  %3384 = icmp eq i8 %3383, 101
  br i1 %3384, label %3385, label %3939

3385:                                             ; preds = %3381
  %3386 = getelementptr inbounds i8, ptr %0, i64 5
  %3387 = load i8, ptr %3386, align 1, !tbaa !5
  %3388 = icmp eq i8 %3387, 116
  br i1 %3388, label %3389, label %3939

3389:                                             ; preds = %3385
  %3390 = getelementptr inbounds i8, ptr %0, i64 6
  %3391 = load i8, ptr %3390, align 1, !tbaa !5
  %3392 = icmp eq i8 %3391, 112
  br i1 %3392, label %3393, label %3939

3393:                                             ; preds = %3389
  %3394 = getelementptr inbounds i8, ptr %0, i64 7
  %3395 = load i8, ptr %3394, align 1, !tbaa !5
  %3396 = icmp eq i8 %3395, 97
  br i1 %3396, label %3397, label %3939

3397:                                             ; preds = %3393
  %3398 = getelementptr inbounds i8, ptr %0, i64 8
  %3399 = load i8, ptr %3398, align 1, !tbaa !5
  %3400 = icmp eq i8 %3399, 105
  br i1 %3400, label %3401, label %3939

3401:                                             ; preds = %3397
  %3402 = getelementptr inbounds i8, ptr %0, i64 9
  %3403 = load i8, ptr %3402, align 1, !tbaa !5
  %3404 = icmp eq i8 %3403, 114
  br i1 %3404, label %3947, label %3939

3405:                                             ; preds = %3
  %3406 = load i8, ptr %0, align 1, !tbaa !5
  switch i8 %3406, label %3939 [
    i8 95, label %3407
    i8 101, label %3447
    i8 103, label %3487
    i8 115, label %3596
  ]

3407:                                             ; preds = %3405
  %3408 = getelementptr inbounds i8, ptr %0, i64 1
  %3409 = load i8, ptr %3408, align 1, !tbaa !5
  %3410 = icmp eq i8 %3409, 95
  br i1 %3410, label %3411, label %3939

3411:                                             ; preds = %3407
  %3412 = getelementptr inbounds i8, ptr %0, i64 2
  %3413 = load i8, ptr %3412, align 1, !tbaa !5
  %3414 = icmp eq i8 %3413, 80
  br i1 %3414, label %3415, label %3939

3415:                                             ; preds = %3411
  %3416 = getelementptr inbounds i8, ptr %0, i64 3
  %3417 = load i8, ptr %3416, align 1, !tbaa !5
  %3418 = icmp eq i8 %3417, 65
  br i1 %3418, label %3419, label %3939

3419:                                             ; preds = %3415
  %3420 = getelementptr inbounds i8, ptr %0, i64 4
  %3421 = load i8, ptr %3420, align 1, !tbaa !5
  %3422 = icmp eq i8 %3421, 67
  br i1 %3422, label %3423, label %3939

3423:                                             ; preds = %3419
  %3424 = getelementptr inbounds i8, ptr %0, i64 5
  %3425 = load i8, ptr %3424, align 1, !tbaa !5
  %3426 = icmp eq i8 %3425, 75
  br i1 %3426, label %3427, label %3939

3427:                                             ; preds = %3423
  %3428 = getelementptr inbounds i8, ptr %0, i64 6
  %3429 = load i8, ptr %3428, align 1, !tbaa !5
  %3430 = icmp eq i8 %3429, 65
  br i1 %3430, label %3431, label %3939

3431:                                             ; preds = %3427
  %3432 = getelementptr inbounds i8, ptr %0, i64 7
  %3433 = load i8, ptr %3432, align 1, !tbaa !5
  %3434 = icmp eq i8 %3433, 71
  br i1 %3434, label %3435, label %3939

3435:                                             ; preds = %3431
  %3436 = getelementptr inbounds i8, ptr %0, i64 8
  %3437 = load i8, ptr %3436, align 1, !tbaa !5
  %3438 = icmp eq i8 %3437, 69
  br i1 %3438, label %3439, label %3939

3439:                                             ; preds = %3435
  %3440 = getelementptr inbounds i8, ptr %0, i64 9
  %3441 = load i8, ptr %3440, align 1, !tbaa !5
  %3442 = icmp eq i8 %3441, 95
  br i1 %3442, label %3443, label %3939

3443:                                             ; preds = %3439
  %3444 = getelementptr inbounds i8, ptr %0, i64 10
  %3445 = load i8, ptr %3444, align 1, !tbaa !5
  %3446 = icmp eq i8 %3445, 95
  br i1 %3446, label %3947, label %3939

3447:                                             ; preds = %3405
  %3448 = getelementptr inbounds i8, ptr %0, i64 1
  %3449 = load i8, ptr %3448, align 1, !tbaa !5
  %3450 = icmp eq i8 %3449, 110
  br i1 %3450, label %3451, label %3939

3451:                                             ; preds = %3447
  %3452 = getelementptr inbounds i8, ptr %0, i64 2
  %3453 = load i8, ptr %3452, align 1, !tbaa !5
  %3454 = icmp eq i8 %3453, 100
  br i1 %3454, label %3455, label %3939

3455:                                             ; preds = %3451
  %3456 = getelementptr inbounds i8, ptr %0, i64 3
  %3457 = load i8, ptr %3456, align 1, !tbaa !5
  %3458 = icmp eq i8 %3457, 112
  br i1 %3458, label %3459, label %3939

3459:                                             ; preds = %3455
  %3460 = getelementptr inbounds i8, ptr %0, i64 4
  %3461 = load i8, ptr %3460, align 1, !tbaa !5
  %3462 = icmp eq i8 %3461, 114
  br i1 %3462, label %3463, label %3939

3463:                                             ; preds = %3459
  %3464 = getelementptr inbounds i8, ptr %0, i64 5
  %3465 = load i8, ptr %3464, align 1, !tbaa !5
  %3466 = icmp eq i8 %3465, 111
  br i1 %3466, label %3467, label %3939

3467:                                             ; preds = %3463
  %3468 = getelementptr inbounds i8, ptr %0, i64 6
  %3469 = load i8, ptr %3468, align 1, !tbaa !5
  %3470 = icmp eq i8 %3469, 116
  br i1 %3470, label %3471, label %3939

3471:                                             ; preds = %3467
  %3472 = getelementptr inbounds i8, ptr %0, i64 7
  %3473 = load i8, ptr %3472, align 1, !tbaa !5
  %3474 = icmp eq i8 %3473, 111
  br i1 %3474, label %3475, label %3939

3475:                                             ; preds = %3471
  %3476 = getelementptr inbounds i8, ptr %0, i64 8
  %3477 = load i8, ptr %3476, align 1, !tbaa !5
  %3478 = icmp eq i8 %3477, 101
  br i1 %3478, label %3479, label %3939

3479:                                             ; preds = %3475
  %3480 = getelementptr inbounds i8, ptr %0, i64 9
  %3481 = load i8, ptr %3480, align 1, !tbaa !5
  %3482 = icmp eq i8 %3481, 110
  br i1 %3482, label %3483, label %3939

3483:                                             ; preds = %3479
  %3484 = getelementptr inbounds i8, ptr %0, i64 10
  %3485 = load i8, ptr %3484, align 1, !tbaa !5
  %3486 = icmp eq i8 %3485, 116
  br i1 %3486, label %3947, label %3939

3487:                                             ; preds = %3405
  %3488 = getelementptr inbounds i8, ptr %0, i64 1
  %3489 = load i8, ptr %3488, align 1, !tbaa !5
  %3490 = icmp eq i8 %3489, 101
  br i1 %3490, label %3491, label %3939

3491:                                             ; preds = %3487
  %3492 = getelementptr inbounds i8, ptr %0, i64 2
  %3493 = load i8, ptr %3492, align 1, !tbaa !5
  %3494 = icmp eq i8 %3493, 116
  br i1 %3494, label %3495, label %3939

3495:                                             ; preds = %3491
  %3496 = getelementptr inbounds i8, ptr %0, i64 3
  %3497 = load i8, ptr %3496, align 1, !tbaa !5
  switch i8 %3497, label %3939 [
    i8 112, label %3498
    i8 115, label %3568
  ]

3498:                                             ; preds = %3495
  %3499 = getelementptr inbounds i8, ptr %0, i64 4
  %3500 = load i8, ptr %3499, align 1, !tbaa !5
  switch i8 %3500, label %3939 [
    i8 101, label %3501
    i8 114, label %3525
  ]

3501:                                             ; preds = %3498
  %3502 = getelementptr inbounds i8, ptr %0, i64 5
  %3503 = load i8, ptr %3502, align 1, !tbaa !5
  %3504 = icmp eq i8 %3503, 101
  br i1 %3504, label %3505, label %3939

3505:                                             ; preds = %3501
  %3506 = getelementptr inbounds i8, ptr %0, i64 6
  %3507 = load i8, ptr %3506, align 1, !tbaa !5
  %3508 = icmp eq i8 %3507, 114
  br i1 %3508, label %3509, label %3939

3509:                                             ; preds = %3505
  %3510 = getelementptr inbounds i8, ptr %0, i64 7
  %3511 = load i8, ptr %3510, align 1, !tbaa !5
  %3512 = icmp eq i8 %3511, 110
  br i1 %3512, label %3513, label %3939

3513:                                             ; preds = %3509
  %3514 = getelementptr inbounds i8, ptr %0, i64 8
  %3515 = load i8, ptr %3514, align 1, !tbaa !5
  %3516 = icmp eq i8 %3515, 97
  br i1 %3516, label %3517, label %3939

3517:                                             ; preds = %3513
  %3518 = getelementptr inbounds i8, ptr %0, i64 9
  %3519 = load i8, ptr %3518, align 1, !tbaa !5
  %3520 = icmp eq i8 %3519, 109
  br i1 %3520, label %3521, label %3939

3521:                                             ; preds = %3517
  %3522 = getelementptr inbounds i8, ptr %0, i64 10
  %3523 = load i8, ptr %3522, align 1, !tbaa !5
  %3524 = icmp eq i8 %3523, 101
  br i1 %3524, label %3947, label %3939

3525:                                             ; preds = %3498
  %3526 = getelementptr inbounds i8, ptr %0, i64 5
  %3527 = load i8, ptr %3526, align 1, !tbaa !5
  switch i8 %3527, label %3939 [
    i8 105, label %3528
    i8 111, label %3548
  ]

3528:                                             ; preds = %3525
  %3529 = getelementptr inbounds i8, ptr %0, i64 6
  %3530 = load i8, ptr %3529, align 1, !tbaa !5
  %3531 = icmp eq i8 %3530, 111
  br i1 %3531, label %3532, label %3939

3532:                                             ; preds = %3528
  %3533 = getelementptr inbounds i8, ptr %0, i64 7
  %3534 = load i8, ptr %3533, align 1, !tbaa !5
  %3535 = icmp eq i8 %3534, 114
  br i1 %3535, label %3536, label %3939

3536:                                             ; preds = %3532
  %3537 = getelementptr inbounds i8, ptr %0, i64 8
  %3538 = load i8, ptr %3537, align 1, !tbaa !5
  %3539 = icmp eq i8 %3538, 105
  br i1 %3539, label %3540, label %3939

3540:                                             ; preds = %3536
  %3541 = getelementptr inbounds i8, ptr %0, i64 9
  %3542 = load i8, ptr %3541, align 1, !tbaa !5
  %3543 = icmp eq i8 %3542, 116
  br i1 %3543, label %3544, label %3939

3544:                                             ; preds = %3540
  %3545 = getelementptr inbounds i8, ptr %0, i64 10
  %3546 = load i8, ptr %3545, align 1, !tbaa !5
  %3547 = icmp eq i8 %3546, 121
  br i1 %3547, label %3947, label %3939

3548:                                             ; preds = %3525
  %3549 = getelementptr inbounds i8, ptr %0, i64 6
  %3550 = load i8, ptr %3549, align 1, !tbaa !5
  %3551 = icmp eq i8 %3550, 116
  br i1 %3551, label %3552, label %3939

3552:                                             ; preds = %3548
  %3553 = getelementptr inbounds i8, ptr %0, i64 7
  %3554 = load i8, ptr %3553, align 1, !tbaa !5
  %3555 = icmp eq i8 %3554, 111
  br i1 %3555, label %3556, label %3939

3556:                                             ; preds = %3552
  %3557 = getelementptr inbounds i8, ptr %0, i64 8
  %3558 = load i8, ptr %3557, align 1, !tbaa !5
  %3559 = icmp eq i8 %3558, 101
  br i1 %3559, label %3560, label %3939

3560:                                             ; preds = %3556
  %3561 = getelementptr inbounds i8, ptr %0, i64 9
  %3562 = load i8, ptr %3561, align 1, !tbaa !5
  %3563 = icmp eq i8 %3562, 110
  br i1 %3563, label %3564, label %3939

3564:                                             ; preds = %3560
  %3565 = getelementptr inbounds i8, ptr %0, i64 10
  %3566 = load i8, ptr %3565, align 1, !tbaa !5
  %3567 = icmp eq i8 %3566, 116
  br i1 %3567, label %3947, label %3939

3568:                                             ; preds = %3495
  %3569 = getelementptr inbounds i8, ptr %0, i64 4
  %3570 = load i8, ptr %3569, align 1, !tbaa !5
  %3571 = icmp eq i8 %3570, 111
  br i1 %3571, label %3572, label %3939

3572:                                             ; preds = %3568
  %3573 = getelementptr inbounds i8, ptr %0, i64 5
  %3574 = load i8, ptr %3573, align 1, !tbaa !5
  %3575 = icmp eq i8 %3574, 99
  br i1 %3575, label %3576, label %3939

3576:                                             ; preds = %3572
  %3577 = getelementptr inbounds i8, ptr %0, i64 6
  %3578 = load i8, ptr %3577, align 1, !tbaa !5
  %3579 = icmp eq i8 %3578, 107
  br i1 %3579, label %3580, label %3939

3580:                                             ; preds = %3576
  %3581 = getelementptr inbounds i8, ptr %0, i64 7
  %3582 = load i8, ptr %3581, align 1, !tbaa !5
  %3583 = icmp eq i8 %3582, 110
  br i1 %3583, label %3584, label %3939

3584:                                             ; preds = %3580
  %3585 = getelementptr inbounds i8, ptr %0, i64 8
  %3586 = load i8, ptr %3585, align 1, !tbaa !5
  %3587 = icmp eq i8 %3586, 97
  br i1 %3587, label %3588, label %3939

3588:                                             ; preds = %3584
  %3589 = getelementptr inbounds i8, ptr %0, i64 9
  %3590 = load i8, ptr %3589, align 1, !tbaa !5
  %3591 = icmp eq i8 %3590, 109
  br i1 %3591, label %3592, label %3939

3592:                                             ; preds = %3588
  %3593 = getelementptr inbounds i8, ptr %0, i64 10
  %3594 = load i8, ptr %3593, align 1, !tbaa !5
  %3595 = icmp eq i8 %3594, 101
  br i1 %3595, label %3947, label %3939

3596:                                             ; preds = %3405
  %3597 = getelementptr inbounds i8, ptr %0, i64 1
  %3598 = load i8, ptr %3597, align 1, !tbaa !5
  %3599 = icmp eq i8 %3598, 101
  br i1 %3599, label %3600, label %3939

3600:                                             ; preds = %3596
  %3601 = getelementptr inbounds i8, ptr %0, i64 2
  %3602 = load i8, ptr %3601, align 1, !tbaa !5
  %3603 = icmp eq i8 %3602, 116
  br i1 %3603, label %3604, label %3939

3604:                                             ; preds = %3600
  %3605 = getelementptr inbounds i8, ptr %0, i64 3
  %3606 = load i8, ptr %3605, align 1, !tbaa !5
  %3607 = icmp eq i8 %3606, 112
  br i1 %3607, label %3608, label %3939

3608:                                             ; preds = %3604
  %3609 = getelementptr inbounds i8, ptr %0, i64 4
  %3610 = load i8, ptr %3609, align 1, !tbaa !5
  %3611 = icmp eq i8 %3610, 114
  br i1 %3611, label %3612, label %3939

3612:                                             ; preds = %3608
  %3613 = getelementptr inbounds i8, ptr %0, i64 5
  %3614 = load i8, ptr %3613, align 1, !tbaa !5
  switch i8 %3614, label %3939 [
    i8 105, label %3615
    i8 111, label %3635
  ]

3615:                                             ; preds = %3612
  %3616 = getelementptr inbounds i8, ptr %0, i64 6
  %3617 = load i8, ptr %3616, align 1, !tbaa !5
  %3618 = icmp eq i8 %3617, 111
  br i1 %3618, label %3619, label %3939

3619:                                             ; preds = %3615
  %3620 = getelementptr inbounds i8, ptr %0, i64 7
  %3621 = load i8, ptr %3620, align 1, !tbaa !5
  %3622 = icmp eq i8 %3621, 114
  br i1 %3622, label %3623, label %3939

3623:                                             ; preds = %3619
  %3624 = getelementptr inbounds i8, ptr %0, i64 8
  %3625 = load i8, ptr %3624, align 1, !tbaa !5
  %3626 = icmp eq i8 %3625, 105
  br i1 %3626, label %3627, label %3939

3627:                                             ; preds = %3623
  %3628 = getelementptr inbounds i8, ptr %0, i64 9
  %3629 = load i8, ptr %3628, align 1, !tbaa !5
  %3630 = icmp eq i8 %3629, 116
  br i1 %3630, label %3631, label %3939

3631:                                             ; preds = %3627
  %3632 = getelementptr inbounds i8, ptr %0, i64 10
  %3633 = load i8, ptr %3632, align 1, !tbaa !5
  %3634 = icmp eq i8 %3633, 121
  br i1 %3634, label %3947, label %3939

3635:                                             ; preds = %3612
  %3636 = getelementptr inbounds i8, ptr %0, i64 6
  %3637 = load i8, ptr %3636, align 1, !tbaa !5
  %3638 = icmp eq i8 %3637, 116
  br i1 %3638, label %3639, label %3939

3639:                                             ; preds = %3635
  %3640 = getelementptr inbounds i8, ptr %0, i64 7
  %3641 = load i8, ptr %3640, align 1, !tbaa !5
  %3642 = icmp eq i8 %3641, 111
  br i1 %3642, label %3643, label %3939

3643:                                             ; preds = %3639
  %3644 = getelementptr inbounds i8, ptr %0, i64 8
  %3645 = load i8, ptr %3644, align 1, !tbaa !5
  %3646 = icmp eq i8 %3645, 101
  br i1 %3646, label %3647, label %3939

3647:                                             ; preds = %3643
  %3648 = getelementptr inbounds i8, ptr %0, i64 9
  %3649 = load i8, ptr %3648, align 1, !tbaa !5
  %3650 = icmp eq i8 %3649, 110
  br i1 %3650, label %3651, label %3939

3651:                                             ; preds = %3647
  %3652 = getelementptr inbounds i8, ptr %0, i64 10
  %3653 = load i8, ptr %3652, align 1, !tbaa !5
  %3654 = icmp eq i8 %3653, 116
  br i1 %3654, label %3947, label %3939

3655:                                             ; preds = %3
  %3656 = load i8, ptr %0, align 1, !tbaa !5
  %3657 = icmp eq i8 %3656, 103
  br i1 %3657, label %3658, label %3939

3658:                                             ; preds = %3655
  %3659 = getelementptr inbounds i8, ptr %0, i64 1
  %3660 = load i8, ptr %3659, align 1, !tbaa !5
  %3661 = icmp eq i8 %3660, 101
  br i1 %3661, label %3662, label %3939

3662:                                             ; preds = %3658
  %3663 = getelementptr inbounds i8, ptr %0, i64 2
  %3664 = load i8, ptr %3663, align 1, !tbaa !5
  %3665 = icmp eq i8 %3664, 116
  br i1 %3665, label %3666, label %3939

3666:                                             ; preds = %3662
  %3667 = getelementptr inbounds i8, ptr %0, i64 3
  %3668 = load i8, ptr %3667, align 1, !tbaa !5
  %3669 = icmp eq i8 %3668, 110
  br i1 %3669, label %3670, label %3939

3670:                                             ; preds = %3666
  %3671 = getelementptr inbounds i8, ptr %0, i64 4
  %3672 = load i8, ptr %3671, align 1, !tbaa !5
  %3673 = icmp eq i8 %3672, 101
  br i1 %3673, label %3674, label %3939

3674:                                             ; preds = %3670
  %3675 = getelementptr inbounds i8, ptr %0, i64 5
  %3676 = load i8, ptr %3675, align 1, !tbaa !5
  %3677 = icmp eq i8 %3676, 116
  br i1 %3677, label %3678, label %3939

3678:                                             ; preds = %3674
  %3679 = getelementptr inbounds i8, ptr %0, i64 6
  %3680 = load i8, ptr %3679, align 1, !tbaa !5
  %3681 = icmp eq i8 %3680, 98
  br i1 %3681, label %3682, label %3939

3682:                                             ; preds = %3678
  %3683 = getelementptr inbounds i8, ptr %0, i64 7
  %3684 = load i8, ptr %3683, align 1, !tbaa !5
  %3685 = icmp eq i8 %3684, 121
  br i1 %3685, label %3686, label %3939

3686:                                             ; preds = %3682
  %3687 = getelementptr inbounds i8, ptr %0, i64 8
  %3688 = load i8, ptr %3687, align 1, !tbaa !5
  switch i8 %3688, label %3939 [
    i8 97, label %3689
    i8 110, label %3701
  ]

3689:                                             ; preds = %3686
  %3690 = getelementptr inbounds i8, ptr %0, i64 9
  %3691 = load i8, ptr %3690, align 1, !tbaa !5
  %3692 = icmp eq i8 %3691, 100
  br i1 %3692, label %3693, label %3939

3693:                                             ; preds = %3689
  %3694 = getelementptr inbounds i8, ptr %0, i64 10
  %3695 = load i8, ptr %3694, align 1, !tbaa !5
  %3696 = icmp eq i8 %3695, 100
  br i1 %3696, label %3697, label %3939

3697:                                             ; preds = %3693
  %3698 = getelementptr inbounds i8, ptr %0, i64 11
  %3699 = load i8, ptr %3698, align 1, !tbaa !5
  %3700 = icmp eq i8 %3699, 114
  br i1 %3700, label %3947, label %3939

3701:                                             ; preds = %3686
  %3702 = getelementptr inbounds i8, ptr %0, i64 9
  %3703 = load i8, ptr %3702, align 1, !tbaa !5
  %3704 = icmp eq i8 %3703, 97
  br i1 %3704, label %3705, label %3939

3705:                                             ; preds = %3701
  %3706 = getelementptr inbounds i8, ptr %0, i64 10
  %3707 = load i8, ptr %3706, align 1, !tbaa !5
  %3708 = icmp eq i8 %3707, 109
  br i1 %3708, label %3709, label %3939

3709:                                             ; preds = %3705
  %3710 = getelementptr inbounds i8, ptr %0, i64 11
  %3711 = load i8, ptr %3710, align 1, !tbaa !5
  %3712 = icmp eq i8 %3711, 101
  br i1 %3712, label %3947, label %3939

3713:                                             ; preds = %3
  %3714 = load i8, ptr %0, align 1, !tbaa !5
  %3715 = icmp eq i8 %3714, 103
  br i1 %3715, label %3716, label %3939

3716:                                             ; preds = %3713
  %3717 = getelementptr inbounds i8, ptr %0, i64 1
  %3718 = load i8, ptr %3717, align 1, !tbaa !5
  %3719 = icmp eq i8 %3718, 101
  br i1 %3719, label %3720, label %3939

3720:                                             ; preds = %3716
  %3721 = getelementptr inbounds i8, ptr %0, i64 2
  %3722 = load i8, ptr %3721, align 1, !tbaa !5
  %3723 = icmp eq i8 %3722, 116
  br i1 %3723, label %3724, label %3939

3724:                                             ; preds = %3720
  %3725 = getelementptr inbounds i8, ptr %0, i64 3
  %3726 = load i8, ptr %3725, align 1, !tbaa !5
  switch i8 %3726, label %3939 [
    i8 104, label %3727
    i8 115, label %3774
  ]

3727:                                             ; preds = %3724
  %3728 = getelementptr inbounds i8, ptr %0, i64 4
  %3729 = load i8, ptr %3728, align 1, !tbaa !5
  %3730 = icmp eq i8 %3729, 111
  br i1 %3730, label %3731, label %3939

3731:                                             ; preds = %3727
  %3732 = getelementptr inbounds i8, ptr %0, i64 5
  %3733 = load i8, ptr %3732, align 1, !tbaa !5
  %3734 = icmp eq i8 %3733, 115
  br i1 %3734, label %3735, label %3939

3735:                                             ; preds = %3731
  %3736 = getelementptr inbounds i8, ptr %0, i64 6
  %3737 = load i8, ptr %3736, align 1, !tbaa !5
  %3738 = icmp eq i8 %3737, 116
  br i1 %3738, label %3739, label %3939

3739:                                             ; preds = %3735
  %3740 = getelementptr inbounds i8, ptr %0, i64 7
  %3741 = load i8, ptr %3740, align 1, !tbaa !5
  %3742 = icmp eq i8 %3741, 98
  br i1 %3742, label %3743, label %3939

3743:                                             ; preds = %3739
  %3744 = getelementptr inbounds i8, ptr %0, i64 8
  %3745 = load i8, ptr %3744, align 1, !tbaa !5
  %3746 = icmp eq i8 %3745, 121
  br i1 %3746, label %3747, label %3939

3747:                                             ; preds = %3743
  %3748 = getelementptr inbounds i8, ptr %0, i64 9
  %3749 = load i8, ptr %3748, align 1, !tbaa !5
  switch i8 %3749, label %3939 [
    i8 97, label %3750
    i8 110, label %3762
  ]

3750:                                             ; preds = %3747
  %3751 = getelementptr inbounds i8, ptr %0, i64 10
  %3752 = load i8, ptr %3751, align 1, !tbaa !5
  %3753 = icmp eq i8 %3752, 100
  br i1 %3753, label %3754, label %3939

3754:                                             ; preds = %3750
  %3755 = getelementptr inbounds i8, ptr %0, i64 11
  %3756 = load i8, ptr %3755, align 1, !tbaa !5
  %3757 = icmp eq i8 %3756, 100
  br i1 %3757, label %3758, label %3939

3758:                                             ; preds = %3754
  %3759 = getelementptr inbounds i8, ptr %0, i64 12
  %3760 = load i8, ptr %3759, align 1, !tbaa !5
  %3761 = icmp eq i8 %3760, 114
  br i1 %3761, label %3947, label %3939

3762:                                             ; preds = %3747
  %3763 = getelementptr inbounds i8, ptr %0, i64 10
  %3764 = load i8, ptr %3763, align 1, !tbaa !5
  %3765 = icmp eq i8 %3764, 97
  br i1 %3765, label %3766, label %3939

3766:                                             ; preds = %3762
  %3767 = getelementptr inbounds i8, ptr %0, i64 11
  %3768 = load i8, ptr %3767, align 1, !tbaa !5
  %3769 = icmp eq i8 %3768, 109
  br i1 %3769, label %3770, label %3939

3770:                                             ; preds = %3766
  %3771 = getelementptr inbounds i8, ptr %0, i64 12
  %3772 = load i8, ptr %3771, align 1, !tbaa !5
  %3773 = icmp eq i8 %3772, 101
  br i1 %3773, label %3947, label %3939

3774:                                             ; preds = %3724
  %3775 = getelementptr inbounds i8, ptr %0, i64 4
  %3776 = load i8, ptr %3775, align 1, !tbaa !5
  %3777 = icmp eq i8 %3776, 101
  br i1 %3777, label %3778, label %3939

3778:                                             ; preds = %3774
  %3779 = getelementptr inbounds i8, ptr %0, i64 5
  %3780 = load i8, ptr %3779, align 1, !tbaa !5
  %3781 = icmp eq i8 %3780, 114
  br i1 %3781, label %3782, label %3939

3782:                                             ; preds = %3778
  %3783 = getelementptr inbounds i8, ptr %0, i64 6
  %3784 = load i8, ptr %3783, align 1, !tbaa !5
  %3785 = icmp eq i8 %3784, 118
  br i1 %3785, label %3786, label %3939

3786:                                             ; preds = %3782
  %3787 = getelementptr inbounds i8, ptr %0, i64 7
  %3788 = load i8, ptr %3787, align 1, !tbaa !5
  %3789 = icmp eq i8 %3788, 98
  br i1 %3789, label %3790, label %3939

3790:                                             ; preds = %3786
  %3791 = getelementptr inbounds i8, ptr %0, i64 8
  %3792 = load i8, ptr %3791, align 1, !tbaa !5
  %3793 = icmp eq i8 %3792, 121
  br i1 %3793, label %3794, label %3939

3794:                                             ; preds = %3790
  %3795 = getelementptr inbounds i8, ptr %0, i64 9
  %3796 = load i8, ptr %3795, align 1, !tbaa !5
  switch i8 %3796, label %3939 [
    i8 110, label %3797
    i8 112, label %3809
  ]

3797:                                             ; preds = %3794
  %3798 = getelementptr inbounds i8, ptr %0, i64 10
  %3799 = load i8, ptr %3798, align 1, !tbaa !5
  %3800 = icmp eq i8 %3799, 97
  br i1 %3800, label %3801, label %3939

3801:                                             ; preds = %3797
  %3802 = getelementptr inbounds i8, ptr %0, i64 11
  %3803 = load i8, ptr %3802, align 1, !tbaa !5
  %3804 = icmp eq i8 %3803, 109
  br i1 %3804, label %3805, label %3939

3805:                                             ; preds = %3801
  %3806 = getelementptr inbounds i8, ptr %0, i64 12
  %3807 = load i8, ptr %3806, align 1, !tbaa !5
  %3808 = icmp eq i8 %3807, 101
  br i1 %3808, label %3947, label %3939

3809:                                             ; preds = %3794
  %3810 = getelementptr inbounds i8, ptr %0, i64 10
  %3811 = load i8, ptr %3810, align 1, !tbaa !5
  %3812 = icmp eq i8 %3811, 111
  br i1 %3812, label %3813, label %3939

3813:                                             ; preds = %3809
  %3814 = getelementptr inbounds i8, ptr %0, i64 11
  %3815 = load i8, ptr %3814, align 1, !tbaa !5
  %3816 = icmp eq i8 %3815, 114
  br i1 %3816, label %3817, label %3939

3817:                                             ; preds = %3813
  %3818 = getelementptr inbounds i8, ptr %0, i64 12
  %3819 = load i8, ptr %3818, align 1, !tbaa !5
  %3820 = icmp eq i8 %3819, 116
  br i1 %3820, label %3947, label %3939

3821:                                             ; preds = %3
  %3822 = load i8, ptr %0, align 1, !tbaa !5
  %3823 = icmp eq i8 %3822, 103
  br i1 %3823, label %3824, label %3939

3824:                                             ; preds = %3821
  %3825 = getelementptr inbounds i8, ptr %0, i64 1
  %3826 = load i8, ptr %3825, align 1, !tbaa !5
  %3827 = icmp eq i8 %3826, 101
  br i1 %3827, label %3828, label %3939

3828:                                             ; preds = %3824
  %3829 = getelementptr inbounds i8, ptr %0, i64 2
  %3830 = load i8, ptr %3829, align 1, !tbaa !5
  %3831 = icmp eq i8 %3830, 116
  br i1 %3831, label %3832, label %3939

3832:                                             ; preds = %3828
  %3833 = getelementptr inbounds i8, ptr %0, i64 3
  %3834 = load i8, ptr %3833, align 1, !tbaa !5
  %3835 = icmp eq i8 %3834, 112
  br i1 %3835, label %3836, label %3939

3836:                                             ; preds = %3832
  %3837 = getelementptr inbounds i8, ptr %0, i64 4
  %3838 = load i8, ptr %3837, align 1, !tbaa !5
  %3839 = icmp eq i8 %3838, 114
  br i1 %3839, label %3840, label %3939

3840:                                             ; preds = %3836
  %3841 = getelementptr inbounds i8, ptr %0, i64 5
  %3842 = load i8, ptr %3841, align 1, !tbaa !5
  %3843 = icmp eq i8 %3842, 111
  br i1 %3843, label %3844, label %3939

3844:                                             ; preds = %3840
  %3845 = getelementptr inbounds i8, ptr %0, i64 6
  %3846 = load i8, ptr %3845, align 1, !tbaa !5
  %3847 = icmp eq i8 %3846, 116
  br i1 %3847, label %3848, label %3939

3848:                                             ; preds = %3844
  %3849 = getelementptr inbounds i8, ptr %0, i64 7
  %3850 = load i8, ptr %3849, align 1, !tbaa !5
  %3851 = icmp eq i8 %3850, 111
  br i1 %3851, label %3852, label %3939

3852:                                             ; preds = %3848
  %3853 = getelementptr inbounds i8, ptr %0, i64 8
  %3854 = load i8, ptr %3853, align 1, !tbaa !5
  %3855 = icmp eq i8 %3854, 98
  br i1 %3855, label %3856, label %3939

3856:                                             ; preds = %3852
  %3857 = getelementptr inbounds i8, ptr %0, i64 9
  %3858 = load i8, ptr %3857, align 1, !tbaa !5
  %3859 = icmp eq i8 %3858, 121
  br i1 %3859, label %3860, label %3939

3860:                                             ; preds = %3856
  %3861 = getelementptr inbounds i8, ptr %0, i64 10
  %3862 = load i8, ptr %3861, align 1, !tbaa !5
  %3863 = icmp eq i8 %3862, 110
  br i1 %3863, label %3864, label %3939

3864:                                             ; preds = %3860
  %3865 = getelementptr inbounds i8, ptr %0, i64 11
  %3866 = load i8, ptr %3865, align 1, !tbaa !5
  %3867 = icmp eq i8 %3866, 97
  br i1 %3867, label %3868, label %3939

3868:                                             ; preds = %3864
  %3869 = getelementptr inbounds i8, ptr %0, i64 12
  %3870 = load i8, ptr %3869, align 1, !tbaa !5
  %3871 = icmp eq i8 %3870, 109
  br i1 %3871, label %3872, label %3939

3872:                                             ; preds = %3868
  %3873 = getelementptr inbounds i8, ptr %0, i64 13
  %3874 = load i8, ptr %3873, align 1, !tbaa !5
  %3875 = icmp eq i8 %3874, 101
  br i1 %3875, label %3947, label %3939

3876:                                             ; preds = %3
  %3877 = load i8, ptr %0, align 1, !tbaa !5
  %3878 = icmp eq i8 %3877, 103
  br i1 %3878, label %3879, label %3939

3879:                                             ; preds = %3876
  %3880 = getelementptr inbounds i8, ptr %0, i64 1
  %3881 = load i8, ptr %3880, align 1, !tbaa !5
  %3882 = icmp eq i8 %3881, 101
  br i1 %3882, label %3883, label %3939

3883:                                             ; preds = %3879
  %3884 = getelementptr inbounds i8, ptr %0, i64 2
  %3885 = load i8, ptr %3884, align 1, !tbaa !5
  %3886 = icmp eq i8 %3885, 116
  br i1 %3886, label %3887, label %3939

3887:                                             ; preds = %3883
  %3888 = getelementptr inbounds i8, ptr %0, i64 3
  %3889 = load i8, ptr %3888, align 1, !tbaa !5
  %3890 = icmp eq i8 %3889, 112
  br i1 %3890, label %3891, label %3939

3891:                                             ; preds = %3887
  %3892 = getelementptr inbounds i8, ptr %0, i64 4
  %3893 = load i8, ptr %3892, align 1, !tbaa !5
  %3894 = icmp eq i8 %3893, 114
  br i1 %3894, label %3895, label %3939

3895:                                             ; preds = %3891
  %3896 = getelementptr inbounds i8, ptr %0, i64 5
  %3897 = load i8, ptr %3896, align 1, !tbaa !5
  %3898 = icmp eq i8 %3897, 111
  br i1 %3898, label %3899, label %3939

3899:                                             ; preds = %3895
  %3900 = getelementptr inbounds i8, ptr %0, i64 6
  %3901 = load i8, ptr %3900, align 1, !tbaa !5
  %3902 = icmp eq i8 %3901, 116
  br i1 %3902, label %3903, label %3939

3903:                                             ; preds = %3899
  %3904 = getelementptr inbounds i8, ptr %0, i64 7
  %3905 = load i8, ptr %3904, align 1, !tbaa !5
  %3906 = icmp eq i8 %3905, 111
  br i1 %3906, label %3907, label %3939

3907:                                             ; preds = %3903
  %3908 = getelementptr inbounds i8, ptr %0, i64 8
  %3909 = load i8, ptr %3908, align 1, !tbaa !5
  %3910 = icmp eq i8 %3909, 98
  br i1 %3910, label %3911, label %3939

3911:                                             ; preds = %3907
  %3912 = getelementptr inbounds i8, ptr %0, i64 9
  %3913 = load i8, ptr %3912, align 1, !tbaa !5
  %3914 = icmp eq i8 %3913, 121
  br i1 %3914, label %3915, label %3939

3915:                                             ; preds = %3911
  %3916 = getelementptr inbounds i8, ptr %0, i64 10
  %3917 = load i8, ptr %3916, align 1, !tbaa !5
  %3918 = icmp eq i8 %3917, 110
  br i1 %3918, label %3919, label %3939

3919:                                             ; preds = %3915
  %3920 = getelementptr inbounds i8, ptr %0, i64 11
  %3921 = load i8, ptr %3920, align 1, !tbaa !5
  %3922 = icmp eq i8 %3921, 117
  br i1 %3922, label %3923, label %3939

3923:                                             ; preds = %3919
  %3924 = getelementptr inbounds i8, ptr %0, i64 12
  %3925 = load i8, ptr %3924, align 1, !tbaa !5
  %3926 = icmp eq i8 %3925, 109
  br i1 %3926, label %3927, label %3939

3927:                                             ; preds = %3923
  %3928 = getelementptr inbounds i8, ptr %0, i64 13
  %3929 = load i8, ptr %3928, align 1, !tbaa !5
  %3930 = icmp eq i8 %3929, 98
  br i1 %3930, label %3931, label %3939

3931:                                             ; preds = %3927
  %3932 = getelementptr inbounds i8, ptr %0, i64 14
  %3933 = load i8, ptr %3932, align 1, !tbaa !5
  %3934 = icmp eq i8 %3933, 101
  br i1 %3934, label %3935, label %3939

3935:                                             ; preds = %3931
  %3936 = getelementptr inbounds i8, ptr %0, i64 15
  %3937 = load i8, ptr %3936, align 1, !tbaa !5
  %3938 = icmp eq i8 %3937, 114
  br i1 %3938, label %3947, label %3939

3939:                                             ; preds = %67, %3, %3876, %3879, %3883, %3887, %3891, %3895, %3899, %3903, %3907, %3911, %3915, %3919, %3923, %3927, %3931, %3935, %3821, %3824, %3828, %3832, %3836, %3840, %3844, %3848, %3852, %3856, %3860, %3864, %3868, %3872, %3713, %3716, %3720, %3724, %3774, %3778, %3782, %3786, %3790, %3794, %3809, %3813, %3817, %3797, %3801, %3805, %3727, %3731, %3735, %3739, %3743, %3747, %3762, %3766, %3770, %3750, %3754, %3758, %3655, %3658, %3662, %3666, %3670, %3674, %3678, %3682, %3686, %3701, %3705, %3709, %3689, %3693, %3697, %3405, %3596, %3600, %3604, %3608, %3612, %3635, %3639, %3643, %3647, %3651, %3615, %3619, %3623, %3627, %3631, %3487, %3491, %3495, %3568, %3572, %3576, %3580, %3584, %3588, %3592, %3498, %3525, %3548, %3552, %3556, %3560, %3564, %3528, %3532, %3536, %3540, %3544, %3501, %3505, %3509, %3513, %3517, %3521, %3447, %3451, %3455, %3459, %3463, %3467, %3471, %3475, %3479, %3483, %3407, %3411, %3415, %3419, %3423, %3427, %3431, %3435, %3439, %3443, %3157, %3296, %3373, %3377, %3381, %3385, %3389, %3393, %3397, %3401, %3299, %3303, %3330, %3353, %3357, %3361, %3365, %3369, %3333, %3337, %3341, %3345, %3349, %3306, %3310, %3314, %3318, %3322, %3326, %3218, %3222, %3226, %3253, %3276, %3280, %3284, %3288, %3292, %3256, %3260, %3264, %3268, %3272, %3229, %3233, %3237, %3241, %3245, %3249, %3159, %3163, %3167, %3194, %3198, %3202, %3206, %3210, %3214, %3170, %3174, %3178, %3182, %3186, %3190, %2828, %3125, %3129, %3133, %3137, %3141, %3145, %3149, %3153, %3093, %3097, %3101, %3105, %3109, %3113, %3117, %3121, %3061, %3065, %3069, %3073, %3077, %3081, %3085, %3089, %3029, %3033, %3037, %3041, %3045, %3049, %3053, %3057, %2997, %3001, %3005, %3009, %3013, %3017, %3021, %3025, %2965, %2969, %2973, %2977, %2981, %2985, %2989, %2993, %2933, %2937, %2941, %2945, %2949, %2953, %2957, %2961, %2862, %2893, %2897, %2901, %2905, %2909, %2913, %2917, %2865, %2869, %2873, %2877, %2881, %2885, %2889, %2830, %2834, %2838, %2842, %2846, %2850, %2854, %2858, %2313, %2800, %2804, %2808, %2812, %2816, %2820, %2824, %2691, %2776, %2780, %2784, %2788, %2792, %2796, %2733, %2756, %2760, %2764, %2768, %2772, %2736, %2740, %2744, %2748, %2752, %2694, %2698, %2717, %2721, %2725, %2729, %2701, %2705, %2709, %2713, %2649, %2653, %2657, %2661, %2679, %2683, %2687, %2664, %2668, %2560, %2564, %2568, %2618, %2622, %2641, %2645, %2633, %2637, %2625, %2629, %2602, %2606, %2610, %2614, %2571, %2575, %2594, %2598, %2586, %2590, %2578, %2582, %2532, %2536, %2540, %2544, %2548, %2552, %2556, %2489, %2493, %2497, %2516, %2520, %2524, %2528, %2500, %2504, %2508, %2512, %2461, %2465, %2469, %2473, %2477, %2481, %2485, %2410, %2437, %2441, %2445, %2449, %2453, %2457, %2413, %2417, %2421, %2425, %2429, %2433, %2343, %2347, %2390, %2394, %2398, %2402, %2406, %2370, %2374, %2378, %2382, %2386, %2350, %2354, %2358, %2362, %2366, %2315, %2319, %2323, %2327, %2331, %2335, %2339, %1697, %2289, %2293, %2297, %2301, %2305, %2309, %2246, %2269, %2273, %2277, %2281, %2285, %2249, %2253, %2257, %2261, %2265, %2222, %2226, %2230, %2234, %2238, %2242, %2074, %2152, %2171, %2210, %2214, %2218, %2198, %2202, %2206, %2186, %2190, %2194, %2174, %2178, %2182, %2155, %2159, %2163, %2167, %2132, %2136, %2140, %2144, %2148, %2112, %2116, %2120, %2124, %2128, %2077, %2096, %2100, %2104, %2108, %2080, %2084, %2088, %2092, %2019, %2023, %2058, %2062, %2066, %2070, %2042, %2046, %2050, %2054, %2026, %2030, %2034, %2038, %1995, %1999, %2003, %2007, %2011, %2015, %1971, %1975, %1979, %1983, %1987, %1991, %1947, %1951, %1955, %1959, %1963, %1967, %1916, %1920, %1924, %1928, %1939, %1943, %1931, %1935, %1892, %1896, %1900, %1904, %1908, %1912, %1822, %1845, %1849, %1880, %1884, %1888, %1852, %1856, %1860, %1825, %1829, %1833, %1837, %1841, %1798, %1802, %1806, %1810, %1814, %1818, %1774, %1778, %1782, %1786, %1790, %1794, %1723, %1727, %1746, %1750, %1754, %1758, %1730, %1734, %1738, %1742, %1699, %1703, %1707, %1711, %1715, %1719, %1187, %1677, %1681, %1685, %1689, %1693, %1639, %1643, %1665, %1669, %1673, %1646, %1657, %1661, %1649, %1653, %1499, %1623, %1627, %1631, %1635, %1607, %1611, %1615, %1619, %1591, %1595, %1599, %1603, %1575, %1579, %1583, %1587, %1552, %1556, %1567, %1571, %1559, %1563, %1518, %1533, %1544, %1548, %1536, %1540, %1521, %1525, %1529, %1502, %1506, %1510, %1514, %1453, %1483, %1487, %1491, %1495, %1456, %1471, %1475, %1479, %1459, %1463, %1467, %1433, %1437, %1441, %1445, %1449, %1390, %1394, %1398, %1425, %1429, %1417, %1421, %1409, %1413, %1401, %1405, %1355, %1374, %1378, %1382, %1386, %1358, %1362, %1366, %1370, %1335, %1339, %1343, %1347, %1351, %1300, %1319, %1323, %1327, %1331, %1303, %1307, %1311, %1315, %1264, %1284, %1288, %1292, %1296, %1267, %1271, %1275, %1279, %1283, %1244, %1248, %1252, %1256, %1260, %1209, %1228, %1232, %1236, %1240, %1212, %1216, %1220, %1224, %1189, %1193, %1197, %1201, %1205, %648, %1160, %1175, %1179, %1183, %1163, %1167, %1171, %1111, %1148, %1152, %1156, %1126, %1137, %1129, %1133, %1114, %1118, %1122, %1095, %1099, %1103, %1107, %997, %1060, %1087, %1091, %1063, %1067, %1048, %1052, %1056, %1036, %1040, %1044, %1024, %1028, %1032, %1012, %1016, %1020, %1000, %1004, %1008, %970, %985, %989, %993, %973, %977, %981, %954, %958, %962, %966, %938, %942, %946, %950, %911, %926, %930, %934, %914, %918, %922, %884, %899, %903, %907, %887, %891, %895, %852, %856, %860, %864, %825, %840, %844, %848, %828, %832, %836, %809, %813, %817, %821, %752, %797, %801, %805, %785, %789, %793, %755, %774, %781, %777, %766, %770, %758, %762, %709, %724, %728, %732, %712, %716, %720, %682, %697, %701, %705, %685, %689, %693, %666, %670, %674, %678, %650, %654, %658, %662, %280, %610, %624, %628, %613, %620, %616, %588, %599, %606, %602, %591, %595, %550, %580, %584, %572, %576, %564, %568, %553, %560, %556, %524, %535, %546, %542, %538, %527, %531, %497, %516, %520, %508, %512, %500, %504, %485, %489, %493, %473, %477, %481, %446, %465, %469, %457, %461, %449, %453, %427, %438, %442, %430, %434, %415, %419, %423, %380, %407, %411, %399, %403, %391, %395, %383, %387, %368, %372, %376, %330, %357, %364, %360, %349, %353, %341, %345, %333, %337, %318, %322, %326, %306, %310, %314, %294, %298, %302, %282, %286, %290, %80, %272, %276, %264, %268, %256, %260, %248, %252, %217, %244, %240, %220, %209, %213, %198, %183, %194, %190, %186, %175, %179, %167, %171, %159, %163, %151, %155, %143, %147, %135, %139, %124, %131, %127, %116, %120, %101, %112, %108, %104, %90, %97, %93, %82, %86, %10, %76, %72, %63, %52, %47, %43, %20, %16, %12, %4
  br label %3947

3940:                                             ; preds = %25
  br label %3947

3941:                                             ; preds = %1763
  br label %3947

3942:                                             ; preds = %2922
  br label %3947

3943:                                             ; preds = %67
  %3944 = zext nneg i8 %70 to i64
  %3945 = getelementptr inbounds [8 x i32], ptr @switch.table.Perl_keyword, i64 0, i64 %3944
  %3946 = load i32, ptr %3945, align 4
  br label %3947

3947:                                             ; preds = %3943, %2922, %3942, %1763, %3941, %25, %3940, %1865, %1072, %869, %737, %633, %225, %3935, %3872, %3817, %3805, %3770, %3758, %3709, %3697, %3651, %3631, %3592, %3564, %3544, %3521, %3483, %3443, %3401, %3369, %3349, %3326, %3292, %3272, %3249, %3214, %3190, %3153, %3121, %3089, %3057, %3025, %2993, %2961, %2921, %2927, %2930, %2889, %2858, %2824, %2796, %2772, %2752, %2729, %2713, %2687, %2672, %2645, %2637, %2629, %2614, %2598, %2590, %2582, %2556, %2528, %2512, %2485, %2457, %2433, %2406, %2386, %2366, %2339, %2309, %2285, %2265, %2242, %2218, %2206, %2194, %2182, %2167, %2148, %2128, %2108, %2092, %2070, %2054, %2038, %2015, %1991, %1967, %1943, %1935, %1912, %1888, %1864, %1874, %1871, %1877, %1841, %1818, %1794, %1762, %1768, %1771, %1742, %1719, %1693, %1673, %1661, %1653, %1635, %1619, %1603, %1587, %1571, %1563, %1548, %1540, %1529, %1514, %1495, %1479, %1467, %1449, %1429, %1421, %1413, %1405, %1386, %1370, %1351, %1331, %1315, %1296, %1260, %1240, %1224, %1205, %1183, %1171, %1156, %1141, %1133, %1122, %1107, %1091, %1071, %1081, %1078, %1084, %1056, %1044, %1032, %1020, %1008, %993, %981, %966, %950, %934, %922, %907, %895, %868, %878, %875, %881, %848, %836, %821, %805, %793, %781, %777, %770, %762, %736, %746, %743, %749, %720, %705, %693, %678, %662, %632, %642, %639, %645, %620, %616, %606, %602, %595, %584, %576, %568, %560, %556, %546, %542, %538, %531, %520, %512, %504, %493, %481, %469, %461, %453, %442, %434, %423, %411, %403, %395, %387, %376, %364, %360, %353, %345, %337, %326, %314, %302, %290, %276, %268, %260, %252, %244, %240, %224, %234, %231, %237, %213, %202, %194, %190, %186, %179, %171, %163, %155, %147, %139, %131, %127, %120, %112, %108, %104, %97, %93, %86, %76, %72, %63, %56, %52, %47, %43, %36, %24, %30, %33, %16, %12, %4, %3939, %51, %50, %9, %8, %7, %6
  %3948 = phi i32 [ 0, %3939 ], [ -125, %51 ], [ -116, %50 ], [ 254, %9 ], [ -252, %8 ], [ 176, %7 ], [ 153, %6 ], [ 126, %4 ], [ 44, %12 ], [ -56, %16 ], [ -63, %24 ], [ -63, %25 ], [ %35, %33 ], [ 0, %30 ], [ %42, %36 ], [ 106, %43 ], [ -114, %47 ], [ 133, %52 ], [ %62, %56 ], [ -141, %63 ], [ 229, %72 ], [ -231, %76 ], [ 11, %86 ], [ -14, %93 ], [ -17, %97 ], [ -29, %104 ], [ -33, %108 ], [ -36, %112 ], [ -43, %120 ], [ -55, %127 ], [ -62, %131 ], [ 67, %139 ], [ -105, %147 ], [ -108, %155 ], [ -123, %163 ], [ 127, %171 ], [ -137, %179 ], [ -138, %186 ], [ -142, %190 ], [ 143, %194 ], [ %208, %202 ], [ -167, %213 ], [ 177, %224 ], [ 177, %231 ], [ 0, %234 ], [ %239, %237 ], [ -201, %240 ], [ 214, %244 ], [ -225, %252 ], [ 241, %260 ], [ -244, %268 ], [ -253, %276 ], [ 12, %290 ], [ -19, %302 ], [ -27, %314 ], [ -45, %326 ], [ -46, %337 ], [ 47, %345 ], [ 57, %353 ], [ -59, %360 ], [ -61, %364 ], [ -69, %376 ], [ -73, %387 ], [ 100, %395 ], [ 102, %403 ], [ 103, %411 ], [ -110, %423 ], [ -111, %434 ], [ -112, %442 ], [ 113, %453 ], [ -118, %461 ], [ -122, %469 ], [ 135, %481 ], [ -139, %493 ], [ -144, %504 ], [ -146, %512 ], [ -152, %520 ], [ -159, %531 ], [ -160, %538 ], [ -165, %542 ], [ 166, %546 ], [ -179, %556 ], [ -185, %560 ], [ 205, %568 ], [ -209, %576 ], [ -211, %584 ], [ -223, %595 ], [ -226, %602 ], [ -227, %606 ], [ -245, %616 ], [ -248, %620 ], [ 249, %632 ], [ 249, %639 ], [ 0, %642 ], [ %647, %645 ], [ 8, %662 ], [ 13, %678 ], [ -16, %693 ], [ -18, %705 ], [ -21, %720 ], [ -22, %736 ], [ -22, %743 ], [ 0, %746 ], [ %751, %749 ], [ -24, %762 ], [ -25, %770 ], [ -26, %777 ], [ -28, %781 ], [ -31, %793 ], [ -37, %805 ], [ 48, %821 ], [ -64, %836 ], [ -66, %848 ], [ 99, %868 ], [ 99, %875 ], [ 0, %878 ], [ %883, %881 ], [ -107, %895 ], [ -109, %907 ], [ 120, %922 ], [ -124, %934 ], [ -128, %950 ], [ 149, %966 ], [ -170, %981 ], [ -175, %993 ], [ -184, %1008 ], [ -195, %1020 ], [ -202, %1032 ], [ 207, %1044 ], [ -210, %1056 ], [ 212, %1071 ], [ 212, %1078 ], [ 0, %1081 ], [ %1086, %1084 ], [ 213, %1091 ], [ -228, %1107 ], [ -233, %1122 ], [ 234, %1133 ], [ %1147, %1141 ], [ -242, %1156 ], [ 250, %1171 ], [ -251, %1183 ], [ -15, %1205 ], [ -23, %1224 ], [ -30, %1240 ], [ 42, %1260 ], [ 60, %1296 ], [ -65, %1315 ], [ 70, %1331 ], [ -101, %1351 ], [ -117, %1370 ], [ -119, %1386 ], [ -129, %1405 ], [ -130, %1413 ], [ -131, %1421 ], [ -132, %1429 ], [ 150, %1449 ], [ -168, %1467 ], [ 171, %1479 ], [ -174, %1495 ], [ 178, %1514 ], [ -181, %1529 ], [ -182, %1540 ], [ -183, %1548 ], [ -196, %1563 ], [ -197, %1571 ], [ -203, %1587 ], [ -206, %1603 ], [ -215, %1619 ], [ -221, %1635 ], [ 235, %1653 ], [ -236, %1661 ], [ -237, %1673 ], [ -243, %1693 ], [ 10, %1719 ], [ 5, %1742 ], [ -6, %1762 ], [ -6, %1763 ], [ %1773, %1771 ], [ 0, %1768 ], [ -20, %1794 ], [ -34, %1818 ], [ -39, %1841 ], [ 40, %1864 ], [ 40, %1871 ], [ 0, %1874 ], [ %1879, %1877 ], [ 41, %1888 ], [ 68, %1912 ], [ -85, %1935 ], [ -86, %1943 ], [ -115, %1967 ], [ -140, %1991 ], [ 145, %2015 ], [ -161, %2038 ], [ 169, %2054 ], [ -172, %2070 ], [ -180, %2092 ], [ -189, %2108 ], [ -198, %2128 ], [ -208, %2148 ], [ -216, %2167 ], [ -217, %2182 ], [ -218, %2194 ], [ -219, %2206 ], [ -220, %2218 ], [ -224, %2242 ], [ -232, %2265 ], [ -238, %2285 ], [ -246, %2309 ], [ 7, %2339 ], [ 4, %2366 ], [ -1, %2386 ], [ -2, %2406 ], [ -32, %2433 ], [ -35, %2457 ], [ -38, %2485 ], [ -49, %2512 ], [ -53, %2528 ], [ -71, %2556 ], [ -74, %2582 ], [ -75, %2590 ], [ -76, %2598 ], [ -80, %2614 ], [ -91, %2629 ], [ -92, %2637 ], [ -93, %2645 ], [ %2678, %2672 ], [ -164, %2687 ], [ -186, %2713 ], [ -192, %2729 ], [ -199, %2752 ], [ -200, %2772 ], [ -222, %2796 ], [ -230, %2824 ], [ 9, %2858 ], [ -51, %2889 ], [ -58, %2921 ], [ -58, %2922 ], [ %2932, %2930 ], [ 0, %2927 ], [ -83, %2961 ], [ -121, %2993 ], [ 151, %3025 ], [ -156, %3057 ], [ -173, %3089 ], [ -188, %3121 ], [ -247, %3153 ], [ -50, %3190 ], [ -54, %3214 ], [ -79, %3249 ], [ -96, %3272 ], [ -98, %3292 ], [ -187, %3326 ], [ -193, %3349 ], [ -194, %3369 ], [ -204, %3401 ], [ -3, %3443 ], [ -52, %3483 ], [ -84, %3521 ], [ -87, %3544 ], [ -90, %3564 ], [ -97, %3592 ], [ -190, %3631 ], [ -191, %3651 ], [ -81, %3697 ], [ -82, %3709 ], [ -77, %3758 ], [ -78, %3770 ], [ -94, %3805 ], [ -95, %3817 ], [ -88, %3872 ], [ -89, %3935 ], [ 0, %225 ], [ 0, %633 ], [ 0, %737 ], [ 0, %869 ], [ 0, %1072 ], [ 0, %1865 ], [ 0, %3940 ], [ 0, %3941 ], [ 0, %3942 ], [ %3946, %3943 ]
  ret i32 %3948
}

; Function Attrs: optsize
declare zeroext i1 @Perl_feature_is_enabled(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !13, i64 56}
!11 = !{!"cop", !9, i64 0, !9, i64 8, !9, i64 16, !12, i64 24, !13, i64 32, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !6, i64 34, !6, i64 35, !13, i64 36, !9, i64 40, !9, i64 48, !13, i64 56, !13, i64 60, !9, i64 64, !9, i64 72}
!12 = !{!"long", !6, i64 0}
!13 = !{!"int", !6, i64 0}
