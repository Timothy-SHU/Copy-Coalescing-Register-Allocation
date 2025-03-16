; ModuleID = 'infcodes.c'
source_filename = "infcodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_codes_state = type { i32, i32, %union.anon, i8, i8, ptr, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32 }
%struct.inflate_blocks_state = type { i32, %union.anon.1, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, i64 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i32, i32, ptr, i32, ptr }
%struct.inflate_huft_s = type { %union.anon.4, %union.anon.6 }
%union.anon.4 = type { ptr }
%union.anon.6 = type { ptr }
%struct.anon.5 = type { i8, i8 }

@inflate_mask = external local_unnamed_addr global [17 x i32], align 16
@.str = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @inflate_codes_new(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = tail call ptr %7(ptr noundef %9, i32 noundef 1, i32 noundef 48) #2
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  store i32 0, ptr %10, align 8, !tbaa !13
  %13 = trunc i32 %0 to i8
  %14 = getelementptr inbounds %struct.inflate_codes_state, ptr %10, i64 0, i32 3
  store i8 %13, ptr %14, align 8, !tbaa !15
  %15 = trunc i32 %1 to i8
  %16 = getelementptr inbounds %struct.inflate_codes_state, ptr %10, i64 0, i32 4
  store i8 %15, ptr %16, align 1, !tbaa !16
  %17 = getelementptr inbounds %struct.inflate_codes_state, ptr %10, i64 0, i32 5
  store ptr %2, ptr %17, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.inflate_codes_state, ptr %10, i64 0, i32 6
  store ptr %3, ptr %18, align 8, !tbaa !18
  br label %19

19:                                               ; preds = %12, %5
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate_codes(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = load ptr, ptr %1, align 8, !tbaa !20
  %7 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !21
  %9 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !24
  %13 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !26
  %17 = icmp ult ptr %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = ptrtoint ptr %16 to i64
  %20 = ptrtoint ptr %14 to i64
  %21 = xor i64 %20, -1
  %22 = add i64 %19, %21
  br label %29

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !27
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %14 to i64
  %28 = sub i64 %26, %27
  br label %29

29:                                               ; preds = %23, %18
  %30 = phi i64 [ %22, %18 ], [ %28, %23 ]
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 6
  %33 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 5
  %34 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 5
  %35 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 2
  %36 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 2
  %37 = getelementptr inbounds i8, ptr %5, i64 12
  %38 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 5
  %39 = getelementptr inbounds i8, ptr %5, i64 12
  %40 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 6
  %41 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 1
  %42 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 6
  %43 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 6
  %44 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 2
  %45 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 1
  %46 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 4
  %47 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 2, i32 0, i32 1
  %48 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 6
  %49 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 2
  %50 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 2, i32 0, i32 1
  %51 = getelementptr inbounds i8, ptr %5, i64 12
  %52 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %53 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 3
  %54 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 4
  %55 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 5
  %56 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 6
  %57 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 6
  %58 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 3
  %59 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 2
  %60 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 2, i32 0, i32 1
  %61 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 5
  %62 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 2
  %63 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 2, i32 0, i32 1
  %64 = getelementptr inbounds %struct.inflate_codes_state, ptr %5, i64 0, i32 1
  br label %65

65:                                               ; preds = %636, %29
  %66 = phi i32 [ %2, %29 ], [ %637, %636 ]
  %67 = phi i64 [ %10, %29 ], [ %638, %636 ]
  %68 = phi i32 [ %12, %29 ], [ %639, %636 ]
  %69 = phi ptr [ %6, %29 ], [ %640, %636 ]
  %70 = phi i32 [ %8, %29 ], [ %641, %636 ]
  %71 = phi ptr [ %14, %29 ], [ %642, %636 ]
  %72 = phi i32 [ %31, %29 ], [ %643, %636 ]
  %73 = load i32, ptr %5, align 8, !tbaa !13
  switch i32 %73, label %678 [
    i32 0, label %74
    i32 1, label %127
    i32 2, label %231
    i32 3, label %293
    i32 4, label %386
    i32 5, label %445
    i32 6, label %561
    i32 7, label %644
    i32 8, label %659
    i32 9, label %669
  ]

74:                                               ; preds = %65
  %75 = icmp ugt i32 %72, 257
  %76 = icmp ugt i32 %70, 9
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %78, label %116

78:                                               ; preds = %74
  store i64 %67, ptr %9, align 8, !tbaa !22
  store i32 %68, ptr %11, align 4, !tbaa !24
  store i32 %70, ptr %7, align 8, !tbaa !21
  %79 = load ptr, ptr %1, align 8, !tbaa !20
  %80 = ptrtoint ptr %69 to i64
  %81 = ptrtoint ptr %79 to i64
  %82 = sub i64 %80, %81
  %83 = load i64, ptr %52, align 8, !tbaa !28
  %84 = add i64 %82, %83
  store i64 %84, ptr %52, align 8, !tbaa !28
  store ptr %69, ptr %1, align 8, !tbaa !20
  store ptr %71, ptr %13, align 8, !tbaa !25
  %85 = load i8, ptr %53, align 8, !tbaa !15
  %86 = zext i8 %85 to i32
  %87 = load i8, ptr %54, align 1, !tbaa !16
  %88 = zext i8 %87 to i32
  %89 = load ptr, ptr %55, align 8, !tbaa !17
  %90 = load ptr, ptr %56, align 8, !tbaa !18
  %91 = tail call i32 @inflate_fast(i32 noundef %86, i32 noundef %88, ptr noundef %89, ptr noundef %90, ptr noundef %0, ptr noundef %1) #2
  %92 = load ptr, ptr %1, align 8, !tbaa !20
  %93 = load i32, ptr %7, align 8, !tbaa !21
  %94 = load i64, ptr %9, align 8, !tbaa !22
  %95 = load i32, ptr %11, align 4, !tbaa !24
  %96 = load ptr, ptr %13, align 8, !tbaa !25
  %97 = load ptr, ptr %15, align 8, !tbaa !26
  %98 = icmp ult ptr %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %78
  %100 = ptrtoint ptr %97 to i64
  %101 = ptrtoint ptr %96 to i64
  %102 = xor i64 %101, -1
  %103 = add i64 %100, %102
  br label %109

104:                                              ; preds = %78
  %105 = load ptr, ptr %57, align 8, !tbaa !27
  %106 = ptrtoint ptr %105 to i64
  %107 = ptrtoint ptr %96 to i64
  %108 = sub i64 %106, %107
  br label %109

109:                                              ; preds = %104, %99
  %110 = phi i64 [ %103, %99 ], [ %108, %104 ]
  %111 = trunc i64 %110 to i32
  %112 = icmp eq i32 %91, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = icmp eq i32 %91, 1
  %115 = select i1 %114, i32 7, i32 9
  store i32 %115, ptr %5, align 8, !tbaa !13
  br label %636

116:                                              ; preds = %109, %74
  %117 = phi i32 [ 0, %109 ], [ %66, %74 ]
  %118 = phi i64 [ %94, %109 ], [ %67, %74 ]
  %119 = phi i32 [ %95, %109 ], [ %68, %74 ]
  %120 = phi ptr [ %92, %109 ], [ %69, %74 ]
  %121 = phi i32 [ %93, %109 ], [ %70, %74 ]
  %122 = phi ptr [ %96, %109 ], [ %71, %74 ]
  %123 = phi i32 [ %111, %109 ], [ %72, %74 ]
  %124 = load i8, ptr %58, align 8, !tbaa !15
  %125 = zext i8 %124 to i32
  store i32 %125, ptr %60, align 8, !tbaa !19
  %126 = load ptr, ptr %61, align 8, !tbaa !17
  store ptr %126, ptr %59, align 8, !tbaa !19
  store i32 1, ptr %5, align 8, !tbaa !13
  br label %127

127:                                              ; preds = %65, %116
  %128 = phi i32 [ %66, %65 ], [ %117, %116 ]
  %129 = phi i64 [ %67, %65 ], [ %118, %116 ]
  %130 = phi i32 [ %68, %65 ], [ %119, %116 ]
  %131 = phi ptr [ %69, %65 ], [ %120, %116 ]
  %132 = phi i32 [ %70, %65 ], [ %121, %116 ]
  %133 = phi ptr [ %71, %65 ], [ %122, %116 ]
  %134 = phi i32 [ %72, %65 ], [ %123, %116 ]
  %135 = load i32, ptr %63, align 8, !tbaa !19
  %136 = icmp ult i32 %130, %135
  br i1 %136, label %137, label %178

137:                                              ; preds = %127
  %138 = icmp eq i32 %132, 0
  br i1 %138, label %160, label %141

139:                                              ; preds = %141
  %140 = icmp eq i32 %146, 0
  br i1 %140, label %155, label %141, !llvm.loop !29

141:                                              ; preds = %137, %139
  %142 = phi i64 [ %152, %139 ], [ %129, %137 ]
  %143 = phi i32 [ %153, %139 ], [ %130, %137 ]
  %144 = phi ptr [ %147, %139 ], [ %131, %137 ]
  %145 = phi i32 [ %146, %139 ], [ %132, %137 ]
  %146 = add i32 %145, -1
  %147 = getelementptr inbounds i8, ptr %144, i64 1
  %148 = load i8, ptr %144, align 1, !tbaa !19
  %149 = zext i8 %148 to i64
  %150 = zext nneg i32 %143 to i64
  %151 = shl i64 %149, %150
  %152 = or i64 %151, %142
  %153 = add i32 %143, 8
  %154 = icmp ult i32 %153, %135
  br i1 %154, label %139, label %178, !llvm.loop !29

155:                                              ; preds = %139
  %156 = zext i32 %132 to i64
  %157 = getelementptr i8, ptr %131, i64 %156
  %158 = shl i32 %132, 3
  %159 = add i32 %130, %158
  br label %165

160:                                              ; preds = %137
  %161 = zext i32 %132 to i64
  %162 = getelementptr i8, ptr %131, i64 %161
  %163 = shl i32 %132, 3
  %164 = add i32 %130, %163
  br label %165

165:                                              ; preds = %160, %155
  %166 = phi ptr [ %157, %155 ], [ %162, %160 ]
  %167 = phi i32 [ %159, %155 ], [ %164, %160 ]
  %168 = phi i64 [ %152, %155 ], [ %129, %160 ]
  %169 = phi i32 [ 0, %155 ], [ %128, %160 ]
  store i64 %168, ptr %9, align 8, !tbaa !22
  store i32 %167, ptr %11, align 4, !tbaa !24
  store i32 0, ptr %7, align 8, !tbaa !21
  %170 = load ptr, ptr %1, align 8, !tbaa !20
  %171 = ptrtoint ptr %166 to i64
  %172 = ptrtoint ptr %170 to i64
  %173 = sub i64 %171, %172
  %174 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %175 = load i64, ptr %174, align 8, !tbaa !28
  %176 = add i64 %173, %175
  store i64 %176, ptr %174, align 8, !tbaa !28
  store ptr %166, ptr %1, align 8, !tbaa !20
  store ptr %133, ptr %13, align 8, !tbaa !25
  %177 = tail call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef %169) #2
  br label %687

178:                                              ; preds = %141, %127
  %179 = phi i32 [ %128, %127 ], [ 0, %141 ]
  %180 = phi i64 [ %129, %127 ], [ %152, %141 ]
  %181 = phi i32 [ %130, %127 ], [ %153, %141 ]
  %182 = phi ptr [ %131, %127 ], [ %147, %141 ]
  %183 = phi i32 [ %132, %127 ], [ %146, %141 ]
  %184 = load ptr, ptr %62, align 8, !tbaa !19
  %185 = trunc i64 %180 to i32
  %186 = zext i32 %135 to i64
  %187 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !31
  %189 = and i32 %188, %185
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.inflate_huft_s, ptr %184, i64 %190
  %192 = getelementptr inbounds %struct.anon.5, ptr %191, i64 0, i32 1
  %193 = load i8, ptr %192, align 1, !tbaa !19
  %194 = zext i8 %193 to i32
  %195 = zext nneg i8 %193 to i64
  %196 = lshr i64 %180, %195
  %197 = sub i32 %181, %194
  %198 = load i8, ptr %191, align 8, !tbaa !19
  %199 = zext i8 %198 to i32
  %200 = icmp eq i8 %198, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %178
  %202 = getelementptr inbounds %struct.inflate_huft_s, ptr %184, i64 %190, i32 1
  %203 = load i32, ptr %202, align 8, !tbaa !19
  store i32 %203, ptr %62, align 8, !tbaa !19
  store i32 6, ptr %5, align 8, !tbaa !13
  br label %636

204:                                              ; preds = %178
  %205 = and i32 %199, 16
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %204
  %208 = and i32 %199, 15
  store i32 %208, ptr %62, align 8, !tbaa !19
  %209 = getelementptr inbounds %struct.inflate_huft_s, ptr %184, i64 %190, i32 1
  %210 = load i32, ptr %209, align 8, !tbaa !19
  store i32 %210, ptr %64, align 4, !tbaa !32
  store i32 2, ptr %5, align 8, !tbaa !13
  br label %636

211:                                              ; preds = %204
  %212 = and i32 %199, 64
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  store i32 %199, ptr %63, align 8, !tbaa !19
  %215 = getelementptr inbounds %struct.inflate_huft_s, ptr %184, i64 %190, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !19
  store ptr %216, ptr %62, align 8, !tbaa !19
  br label %636

217:                                              ; preds = %211
  %218 = and i32 %199, 32
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %217
  store i32 7, ptr %5, align 8, !tbaa !13
  br label %636

221:                                              ; preds = %217
  store i32 9, ptr %5, align 8, !tbaa !13
  %222 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 6
  store ptr @.str, ptr %222, align 8, !tbaa !33
  store i64 %196, ptr %9, align 8, !tbaa !22
  store i32 %197, ptr %11, align 4, !tbaa !24
  store i32 %183, ptr %7, align 8, !tbaa !21
  %223 = load ptr, ptr %1, align 8, !tbaa !20
  %224 = ptrtoint ptr %182 to i64
  %225 = ptrtoint ptr %223 to i64
  %226 = sub i64 %224, %225
  %227 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %228 = load i64, ptr %227, align 8, !tbaa !28
  %229 = add i64 %226, %228
  store i64 %229, ptr %227, align 8, !tbaa !28
  store ptr %182, ptr %1, align 8, !tbaa !20
  store ptr %133, ptr %13, align 8, !tbaa !25
  %230 = tail call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef -3) #2
  br label %687

231:                                              ; preds = %65
  %232 = load i32, ptr %44, align 8, !tbaa !19
  %233 = icmp ult i32 %68, %232
  br i1 %233, label %234, label %275

234:                                              ; preds = %231
  %235 = icmp eq i32 %70, 0
  br i1 %235, label %257, label %238

236:                                              ; preds = %238
  %237 = icmp eq i32 %243, 0
  br i1 %237, label %252, label %238, !llvm.loop !34

238:                                              ; preds = %234, %236
  %239 = phi i64 [ %249, %236 ], [ %67, %234 ]
  %240 = phi i32 [ %250, %236 ], [ %68, %234 ]
  %241 = phi ptr [ %244, %236 ], [ %69, %234 ]
  %242 = phi i32 [ %243, %236 ], [ %70, %234 ]
  %243 = add i32 %242, -1
  %244 = getelementptr inbounds i8, ptr %241, i64 1
  %245 = load i8, ptr %241, align 1, !tbaa !19
  %246 = zext i8 %245 to i64
  %247 = zext nneg i32 %240 to i64
  %248 = shl i64 %246, %247
  %249 = or i64 %248, %239
  %250 = add i32 %240, 8
  %251 = icmp ult i32 %250, %232
  br i1 %251, label %236, label %275, !llvm.loop !34

252:                                              ; preds = %236
  %253 = zext i32 %70 to i64
  %254 = getelementptr i8, ptr %69, i64 %253
  %255 = shl i32 %70, 3
  %256 = add i32 %68, %255
  br label %262

257:                                              ; preds = %234
  %258 = zext i32 %70 to i64
  %259 = getelementptr i8, ptr %69, i64 %258
  %260 = shl i32 %70, 3
  %261 = add i32 %68, %260
  br label %262

262:                                              ; preds = %257, %252
  %263 = phi ptr [ %254, %252 ], [ %259, %257 ]
  %264 = phi i32 [ %256, %252 ], [ %261, %257 ]
  %265 = phi i64 [ %249, %252 ], [ %67, %257 ]
  %266 = phi i32 [ 0, %252 ], [ %66, %257 ]
  store i64 %265, ptr %9, align 8, !tbaa !22
  store i32 %264, ptr %11, align 4, !tbaa !24
  store i32 0, ptr %7, align 8, !tbaa !21
  %267 = load ptr, ptr %1, align 8, !tbaa !20
  %268 = ptrtoint ptr %263 to i64
  %269 = ptrtoint ptr %267 to i64
  %270 = sub i64 %268, %269
  %271 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %272 = load i64, ptr %271, align 8, !tbaa !28
  %273 = add i64 %270, %272
  store i64 %273, ptr %271, align 8, !tbaa !28
  store ptr %263, ptr %1, align 8, !tbaa !20
  store ptr %71, ptr %13, align 8, !tbaa !25
  %274 = tail call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %266) #2
  br label %687

275:                                              ; preds = %238, %231
  %276 = phi i32 [ %66, %231 ], [ 0, %238 ]
  %277 = phi i64 [ %67, %231 ], [ %249, %238 ]
  %278 = phi i32 [ %68, %231 ], [ %250, %238 ]
  %279 = phi ptr [ %69, %231 ], [ %244, %238 ]
  %280 = phi i32 [ %70, %231 ], [ %243, %238 ]
  %281 = trunc i64 %277 to i32
  %282 = zext i32 %232 to i64
  %283 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !31
  %285 = and i32 %284, %281
  %286 = load i32, ptr %45, align 4, !tbaa !32
  %287 = add i32 %286, %285
  store i32 %287, ptr %45, align 4, !tbaa !32
  %288 = lshr i64 %277, %282
  %289 = sub i32 %278, %232
  %290 = load i8, ptr %46, align 1, !tbaa !16
  %291 = zext i8 %290 to i32
  store i32 %291, ptr %47, align 8, !tbaa !19
  %292 = load ptr, ptr %48, align 8, !tbaa !18
  store ptr %292, ptr %44, align 8, !tbaa !19
  store i32 3, ptr %5, align 8, !tbaa !13
  br label %293

293:                                              ; preds = %65, %275
  %294 = phi i32 [ %66, %65 ], [ %276, %275 ]
  %295 = phi i64 [ %67, %65 ], [ %288, %275 ]
  %296 = phi i32 [ %68, %65 ], [ %289, %275 ]
  %297 = phi ptr [ %69, %65 ], [ %279, %275 ]
  %298 = phi i32 [ %70, %65 ], [ %280, %275 ]
  %299 = load i32, ptr %50, align 8, !tbaa !19
  %300 = icmp ult i32 %296, %299
  br i1 %300, label %301, label %342

301:                                              ; preds = %293
  %302 = icmp eq i32 %298, 0
  br i1 %302, label %324, label %305

303:                                              ; preds = %305
  %304 = icmp eq i32 %310, 0
  br i1 %304, label %319, label %305, !llvm.loop !35

305:                                              ; preds = %301, %303
  %306 = phi i64 [ %316, %303 ], [ %295, %301 ]
  %307 = phi i32 [ %317, %303 ], [ %296, %301 ]
  %308 = phi ptr [ %311, %303 ], [ %297, %301 ]
  %309 = phi i32 [ %310, %303 ], [ %298, %301 ]
  %310 = add i32 %309, -1
  %311 = getelementptr inbounds i8, ptr %308, i64 1
  %312 = load i8, ptr %308, align 1, !tbaa !19
  %313 = zext i8 %312 to i64
  %314 = zext nneg i32 %307 to i64
  %315 = shl i64 %313, %314
  %316 = or i64 %315, %306
  %317 = add i32 %307, 8
  %318 = icmp ult i32 %317, %299
  br i1 %318, label %303, label %342, !llvm.loop !35

319:                                              ; preds = %303
  %320 = zext i32 %298 to i64
  %321 = getelementptr i8, ptr %297, i64 %320
  %322 = shl i32 %298, 3
  %323 = add i32 %296, %322
  br label %329

324:                                              ; preds = %301
  %325 = zext i32 %298 to i64
  %326 = getelementptr i8, ptr %297, i64 %325
  %327 = shl i32 %298, 3
  %328 = add i32 %296, %327
  br label %329

329:                                              ; preds = %324, %319
  %330 = phi ptr [ %321, %319 ], [ %326, %324 ]
  %331 = phi i32 [ %323, %319 ], [ %328, %324 ]
  %332 = phi i64 [ %316, %319 ], [ %295, %324 ]
  %333 = phi i32 [ 0, %319 ], [ %294, %324 ]
  store i64 %332, ptr %9, align 8, !tbaa !22
  store i32 %331, ptr %11, align 4, !tbaa !24
  store i32 0, ptr %7, align 8, !tbaa !21
  %334 = load ptr, ptr %1, align 8, !tbaa !20
  %335 = ptrtoint ptr %330 to i64
  %336 = ptrtoint ptr %334 to i64
  %337 = sub i64 %335, %336
  %338 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %339 = load i64, ptr %338, align 8, !tbaa !28
  %340 = add i64 %337, %339
  store i64 %340, ptr %338, align 8, !tbaa !28
  store ptr %330, ptr %1, align 8, !tbaa !20
  store ptr %71, ptr %13, align 8, !tbaa !25
  %341 = tail call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %333) #2
  br label %687

342:                                              ; preds = %305, %293
  %343 = phi i32 [ %294, %293 ], [ 0, %305 ]
  %344 = phi i64 [ %295, %293 ], [ %316, %305 ]
  %345 = phi i32 [ %296, %293 ], [ %317, %305 ]
  %346 = phi ptr [ %297, %293 ], [ %311, %305 ]
  %347 = phi i32 [ %298, %293 ], [ %310, %305 ]
  %348 = load ptr, ptr %49, align 8, !tbaa !19
  %349 = trunc i64 %344 to i32
  %350 = zext i32 %299 to i64
  %351 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %350
  %352 = load i32, ptr %351, align 4, !tbaa !31
  %353 = and i32 %352, %349
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds %struct.inflate_huft_s, ptr %348, i64 %354
  %356 = getelementptr inbounds %struct.anon.5, ptr %355, i64 0, i32 1
  %357 = load i8, ptr %356, align 1, !tbaa !19
  %358 = zext i8 %357 to i32
  %359 = zext nneg i8 %357 to i64
  %360 = lshr i64 %344, %359
  %361 = sub i32 %345, %358
  %362 = load i8, ptr %355, align 8, !tbaa !19
  %363 = zext i8 %362 to i32
  %364 = and i32 %363, 16
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %370, label %366

366:                                              ; preds = %342
  %367 = and i32 %363, 15
  store i32 %367, ptr %49, align 8, !tbaa !19
  %368 = getelementptr inbounds %struct.inflate_huft_s, ptr %348, i64 %354, i32 1
  %369 = load i32, ptr %368, align 8, !tbaa !19
  store i32 %369, ptr %51, align 4, !tbaa !19
  store i32 4, ptr %5, align 8, !tbaa !13
  br label %636

370:                                              ; preds = %342
  %371 = and i32 %363, 64
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %370
  store i32 %363, ptr %50, align 8, !tbaa !19
  %374 = getelementptr inbounds %struct.inflate_huft_s, ptr %348, i64 %354, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !19
  store ptr %375, ptr %49, align 8, !tbaa !19
  br label %636

376:                                              ; preds = %370
  store i32 9, ptr %5, align 8, !tbaa !13
  %377 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 6
  store ptr @.str.1, ptr %377, align 8, !tbaa !33
  store i64 %360, ptr %9, align 8, !tbaa !22
  store i32 %361, ptr %11, align 4, !tbaa !24
  store i32 %347, ptr %7, align 8, !tbaa !21
  %378 = load ptr, ptr %1, align 8, !tbaa !20
  %379 = ptrtoint ptr %346 to i64
  %380 = ptrtoint ptr %378 to i64
  %381 = sub i64 %379, %380
  %382 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %383 = load i64, ptr %382, align 8, !tbaa !28
  %384 = add i64 %381, %383
  store i64 %384, ptr %382, align 8, !tbaa !28
  store ptr %346, ptr %1, align 8, !tbaa !20
  store ptr %71, ptr %13, align 8, !tbaa !25
  %385 = tail call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef -3) #2
  br label %687

386:                                              ; preds = %65
  %387 = load i32, ptr %36, align 8, !tbaa !19
  %388 = icmp ult i32 %68, %387
  br i1 %388, label %389, label %430

389:                                              ; preds = %386
  %390 = icmp eq i32 %70, 0
  br i1 %390, label %412, label %393

391:                                              ; preds = %393
  %392 = icmp eq i32 %398, 0
  br i1 %392, label %407, label %393, !llvm.loop !36

393:                                              ; preds = %389, %391
  %394 = phi i64 [ %404, %391 ], [ %67, %389 ]
  %395 = phi i32 [ %405, %391 ], [ %68, %389 ]
  %396 = phi ptr [ %399, %391 ], [ %69, %389 ]
  %397 = phi i32 [ %398, %391 ], [ %70, %389 ]
  %398 = add i32 %397, -1
  %399 = getelementptr inbounds i8, ptr %396, i64 1
  %400 = load i8, ptr %396, align 1, !tbaa !19
  %401 = zext i8 %400 to i64
  %402 = zext nneg i32 %395 to i64
  %403 = shl i64 %401, %402
  %404 = or i64 %403, %394
  %405 = add i32 %395, 8
  %406 = icmp ult i32 %405, %387
  br i1 %406, label %391, label %430, !llvm.loop !36

407:                                              ; preds = %391
  %408 = zext i32 %70 to i64
  %409 = getelementptr i8, ptr %69, i64 %408
  %410 = shl i32 %70, 3
  %411 = add i32 %68, %410
  br label %417

412:                                              ; preds = %389
  %413 = zext i32 %70 to i64
  %414 = getelementptr i8, ptr %69, i64 %413
  %415 = shl i32 %70, 3
  %416 = add i32 %68, %415
  br label %417

417:                                              ; preds = %412, %407
  %418 = phi ptr [ %409, %407 ], [ %414, %412 ]
  %419 = phi i32 [ %411, %407 ], [ %416, %412 ]
  %420 = phi i64 [ %404, %407 ], [ %67, %412 ]
  %421 = phi i32 [ 0, %407 ], [ %66, %412 ]
  store i64 %420, ptr %9, align 8, !tbaa !22
  store i32 %419, ptr %11, align 4, !tbaa !24
  store i32 0, ptr %7, align 8, !tbaa !21
  %422 = load ptr, ptr %1, align 8, !tbaa !20
  %423 = ptrtoint ptr %418 to i64
  %424 = ptrtoint ptr %422 to i64
  %425 = sub i64 %423, %424
  %426 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %427 = load i64, ptr %426, align 8, !tbaa !28
  %428 = add i64 %425, %427
  store i64 %428, ptr %426, align 8, !tbaa !28
  store ptr %418, ptr %1, align 8, !tbaa !20
  store ptr %71, ptr %13, align 8, !tbaa !25
  %429 = tail call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %421) #2
  br label %687

430:                                              ; preds = %393, %386
  %431 = phi i32 [ %66, %386 ], [ 0, %393 ]
  %432 = phi i64 [ %67, %386 ], [ %404, %393 ]
  %433 = phi i32 [ %68, %386 ], [ %405, %393 ]
  %434 = phi ptr [ %69, %386 ], [ %399, %393 ]
  %435 = phi i32 [ %70, %386 ], [ %398, %393 ]
  %436 = trunc i64 %432 to i32
  %437 = zext i32 %387 to i64
  %438 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %437
  %439 = load i32, ptr %438, align 4, !tbaa !31
  %440 = and i32 %439, %436
  %441 = load i32, ptr %37, align 4, !tbaa !19
  %442 = add i32 %441, %440
  store i32 %442, ptr %37, align 4, !tbaa !19
  %443 = lshr i64 %432, %437
  %444 = sub i32 %433, %387
  store i32 5, ptr %5, align 8, !tbaa !13
  br label %445

445:                                              ; preds = %65, %430
  %446 = phi i32 [ %66, %65 ], [ %431, %430 ]
  %447 = phi i64 [ %67, %65 ], [ %443, %430 ]
  %448 = phi i32 [ %68, %65 ], [ %444, %430 ]
  %449 = phi ptr [ %69, %65 ], [ %434, %430 ]
  %450 = phi i32 [ %70, %65 ], [ %435, %430 ]
  %451 = load ptr, ptr %38, align 8, !tbaa !37
  %452 = ptrtoint ptr %71 to i64
  %453 = ptrtoint ptr %451 to i64
  %454 = sub i64 %452, %453
  %455 = trunc i64 %454 to i32
  %456 = load i32, ptr %39, align 4, !tbaa !19
  %457 = icmp ugt i32 %456, %455
  br i1 %457, label %458, label %460

458:                                              ; preds = %445
  %459 = load ptr, ptr %40, align 8, !tbaa !27
  br label %460

460:                                              ; preds = %445, %458
  %461 = phi i64 [ %454, %458 ], [ 0, %445 ]
  %462 = phi ptr [ %459, %458 ], [ %71, %445 ]
  %463 = load i32, ptr %41, align 4, !tbaa !32
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %557, label %465

465:                                              ; preds = %460
  %466 = zext i32 %456 to i64
  %467 = sub i64 %461, %466
  %468 = getelementptr inbounds i8, ptr %462, i64 %467
  br label %469

469:                                              ; preds = %465, %552
  %470 = phi ptr [ %553, %552 ], [ %468, %465 ]
  %471 = phi i32 [ %547, %552 ], [ %72, %465 ]
  %472 = phi ptr [ %546, %552 ], [ %71, %465 ]
  %473 = phi i32 [ 0, %552 ], [ %446, %465 ]
  %474 = icmp eq i32 %471, 0
  br i1 %474, label %475, label %541

475:                                              ; preds = %469
  %476 = load ptr, ptr %42, align 8, !tbaa !27
  %477 = icmp eq ptr %472, %476
  br i1 %477, label %478, label %492

478:                                              ; preds = %475
  %479 = load ptr, ptr %15, align 8, !tbaa !26
  %480 = load ptr, ptr %38, align 8, !tbaa !37
  %481 = icmp eq ptr %479, %480
  br i1 %481, label %492, label %482

482:                                              ; preds = %478
  %483 = icmp ult ptr %480, %479
  %484 = ptrtoint ptr %479 to i64
  %485 = ptrtoint ptr %480 to i64
  %486 = xor i64 %485, -1
  %487 = add i64 %486, %484
  %488 = ptrtoint ptr %476 to i64
  %489 = sub i64 %488, %485
  %490 = select i1 %483, i64 %487, i64 %489
  %491 = trunc i64 %490 to i32
  br label %492

492:                                              ; preds = %482, %478, %475
  %493 = phi ptr [ %480, %482 ], [ %472, %478 ], [ %472, %475 ]
  %494 = phi i32 [ %491, %482 ], [ 0, %478 ], [ 0, %475 ]
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %541

496:                                              ; preds = %492
  store ptr %493, ptr %13, align 8, !tbaa !25
  %497 = tail call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef %473) #2
  %498 = load ptr, ptr %13, align 8, !tbaa !25
  %499 = load ptr, ptr %15, align 8, !tbaa !26
  %500 = icmp ult ptr %498, %499
  br i1 %500, label %501, label %506

501:                                              ; preds = %496
  %502 = ptrtoint ptr %499 to i64
  %503 = ptrtoint ptr %498 to i64
  %504 = xor i64 %503, -1
  %505 = add i64 %502, %504
  br label %511

506:                                              ; preds = %496
  %507 = load ptr, ptr %42, align 8, !tbaa !27
  %508 = ptrtoint ptr %507 to i64
  %509 = ptrtoint ptr %498 to i64
  %510 = sub i64 %508, %509
  br label %511

511:                                              ; preds = %506, %501
  %512 = phi i64 [ %505, %501 ], [ %510, %506 ]
  %513 = load ptr, ptr %42, align 8, !tbaa !27
  %514 = icmp eq ptr %498, %513
  br i1 %514, label %515, label %527

515:                                              ; preds = %511
  %516 = load ptr, ptr %38, align 8, !tbaa !37
  %517 = icmp eq ptr %499, %516
  br i1 %517, label %527, label %518

518:                                              ; preds = %515
  %519 = icmp ult ptr %516, %499
  %520 = ptrtoint ptr %499 to i64
  %521 = ptrtoint ptr %516 to i64
  %522 = xor i64 %521, -1
  %523 = add i64 %522, %520
  %524 = ptrtoint ptr %513 to i64
  %525 = sub i64 %524, %521
  %526 = select i1 %519, i64 %523, i64 %525
  br label %527

527:                                              ; preds = %518, %515, %511
  %528 = phi ptr [ %516, %518 ], [ %498, %515 ], [ %498, %511 ]
  %529 = phi i64 [ %526, %518 ], [ %512, %515 ], [ %512, %511 ]
  %530 = trunc i64 %529 to i32
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %541

532:                                              ; preds = %527
  store i64 %447, ptr %9, align 8, !tbaa !22
  store i32 %448, ptr %11, align 4, !tbaa !24
  store i32 %450, ptr %7, align 8, !tbaa !21
  %533 = load ptr, ptr %1, align 8, !tbaa !20
  %534 = ptrtoint ptr %449 to i64
  %535 = ptrtoint ptr %533 to i64
  %536 = sub i64 %534, %535
  %537 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %538 = load i64, ptr %537, align 8, !tbaa !28
  %539 = add i64 %536, %538
  store i64 %539, ptr %537, align 8, !tbaa !28
  store ptr %449, ptr %1, align 8, !tbaa !20
  store ptr %528, ptr %13, align 8, !tbaa !25
  %540 = tail call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %497) #2
  br label %687

541:                                              ; preds = %492, %527, %469
  %542 = phi ptr [ %528, %527 ], [ %493, %492 ], [ %472, %469 ]
  %543 = phi i32 [ %530, %527 ], [ %494, %492 ], [ %471, %469 ]
  %544 = getelementptr inbounds i8, ptr %470, i64 1
  %545 = load i8, ptr %470, align 1, !tbaa !19
  %546 = getelementptr inbounds i8, ptr %542, i64 1
  store i8 %545, ptr %542, align 1, !tbaa !19
  %547 = add i32 %543, -1
  %548 = load ptr, ptr %43, align 8, !tbaa !27
  %549 = icmp eq ptr %544, %548
  br i1 %549, label %550, label %552

550:                                              ; preds = %541
  %551 = load ptr, ptr %38, align 8, !tbaa !37
  br label %552

552:                                              ; preds = %550, %541
  %553 = phi ptr [ %551, %550 ], [ %544, %541 ]
  %554 = load i32, ptr %41, align 4, !tbaa !32
  %555 = add i32 %554, -1
  store i32 %555, ptr %41, align 4, !tbaa !32
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %469, !llvm.loop !38

557:                                              ; preds = %552, %460
  %558 = phi i32 [ %446, %460 ], [ 0, %552 ]
  %559 = phi ptr [ %71, %460 ], [ %546, %552 ]
  %560 = phi i32 [ %72, %460 ], [ %547, %552 ]
  store i32 0, ptr %5, align 8, !tbaa !13
  br label %636

561:                                              ; preds = %65
  %562 = icmp eq i32 %72, 0
  br i1 %562, label %563, label %629

563:                                              ; preds = %561
  %564 = load ptr, ptr %32, align 8, !tbaa !27
  %565 = icmp eq ptr %71, %564
  br i1 %565, label %566, label %580

566:                                              ; preds = %563
  %567 = load ptr, ptr %15, align 8, !tbaa !26
  %568 = load ptr, ptr %33, align 8, !tbaa !37
  %569 = icmp eq ptr %567, %568
  br i1 %569, label %580, label %570

570:                                              ; preds = %566
  %571 = icmp ult ptr %568, %567
  %572 = ptrtoint ptr %567 to i64
  %573 = ptrtoint ptr %568 to i64
  %574 = xor i64 %573, -1
  %575 = add i64 %574, %572
  %576 = ptrtoint ptr %564 to i64
  %577 = sub i64 %576, %573
  %578 = select i1 %571, i64 %575, i64 %577
  %579 = trunc i64 %578 to i32
  br label %580

580:                                              ; preds = %570, %566, %563
  %581 = phi ptr [ %568, %570 ], [ %71, %566 ], [ %71, %563 ]
  %582 = phi i32 [ %579, %570 ], [ 0, %566 ], [ 0, %563 ]
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %629

584:                                              ; preds = %580
  store ptr %581, ptr %13, align 8, !tbaa !25
  %585 = tail call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef %66) #2
  %586 = load ptr, ptr %13, align 8, !tbaa !25
  %587 = load ptr, ptr %15, align 8, !tbaa !26
  %588 = icmp ult ptr %586, %587
  br i1 %588, label %589, label %594

589:                                              ; preds = %584
  %590 = ptrtoint ptr %587 to i64
  %591 = ptrtoint ptr %586 to i64
  %592 = xor i64 %591, -1
  %593 = add i64 %590, %592
  br label %599

594:                                              ; preds = %584
  %595 = load ptr, ptr %32, align 8, !tbaa !27
  %596 = ptrtoint ptr %595 to i64
  %597 = ptrtoint ptr %586 to i64
  %598 = sub i64 %596, %597
  br label %599

599:                                              ; preds = %594, %589
  %600 = phi i64 [ %593, %589 ], [ %598, %594 ]
  %601 = load ptr, ptr %32, align 8, !tbaa !27
  %602 = icmp eq ptr %586, %601
  br i1 %602, label %603, label %615

603:                                              ; preds = %599
  %604 = load ptr, ptr %34, align 8, !tbaa !37
  %605 = icmp eq ptr %587, %604
  br i1 %605, label %615, label %606

606:                                              ; preds = %603
  %607 = icmp ult ptr %604, %587
  %608 = ptrtoint ptr %587 to i64
  %609 = ptrtoint ptr %604 to i64
  %610 = xor i64 %609, -1
  %611 = add i64 %610, %608
  %612 = ptrtoint ptr %601 to i64
  %613 = sub i64 %612, %609
  %614 = select i1 %607, i64 %611, i64 %613
  br label %615

615:                                              ; preds = %606, %603, %599
  %616 = phi ptr [ %604, %606 ], [ %586, %603 ], [ %586, %599 ]
  %617 = phi i64 [ %614, %606 ], [ %600, %603 ], [ %600, %599 ]
  %618 = trunc i64 %617 to i32
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %620, label %629

620:                                              ; preds = %615
  store i64 %67, ptr %9, align 8, !tbaa !22
  store i32 %68, ptr %11, align 4, !tbaa !24
  store i32 %70, ptr %7, align 8, !tbaa !21
  %621 = load ptr, ptr %1, align 8, !tbaa !20
  %622 = ptrtoint ptr %69 to i64
  %623 = ptrtoint ptr %621 to i64
  %624 = sub i64 %622, %623
  %625 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %626 = load i64, ptr %625, align 8, !tbaa !28
  %627 = add i64 %624, %626
  store i64 %627, ptr %625, align 8, !tbaa !28
  store ptr %69, ptr %1, align 8, !tbaa !20
  store ptr %616, ptr %13, align 8, !tbaa !25
  %628 = tail call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %585) #2
  br label %687

629:                                              ; preds = %580, %615, %561
  %630 = phi ptr [ %616, %615 ], [ %581, %580 ], [ %71, %561 ]
  %631 = phi i32 [ %618, %615 ], [ %582, %580 ], [ %72, %561 ]
  %632 = load i32, ptr %35, align 8, !tbaa !19
  %633 = trunc i32 %632 to i8
  %634 = getelementptr inbounds i8, ptr %630, i64 1
  store i8 %633, ptr %630, align 1, !tbaa !19
  %635 = add i32 %631, -1
  store i32 0, ptr %5, align 8, !tbaa !13
  br label %636

636:                                              ; preds = %629, %557, %373, %366, %220, %214, %207, %201, %113
  %637 = phi i32 [ 0, %629 ], [ %558, %557 ], [ %343, %366 ], [ %343, %373 ], [ %179, %201 ], [ %179, %207 ], [ %179, %214 ], [ %179, %220 ], [ %91, %113 ]
  %638 = phi i64 [ %67, %629 ], [ %447, %557 ], [ %360, %366 ], [ %360, %373 ], [ %196, %201 ], [ %196, %207 ], [ %196, %214 ], [ %196, %220 ], [ %94, %113 ]
  %639 = phi i32 [ %68, %629 ], [ %448, %557 ], [ %361, %366 ], [ %361, %373 ], [ %197, %201 ], [ %197, %207 ], [ %197, %214 ], [ %197, %220 ], [ %95, %113 ]
  %640 = phi ptr [ %69, %629 ], [ %449, %557 ], [ %346, %366 ], [ %346, %373 ], [ %182, %201 ], [ %182, %207 ], [ %182, %214 ], [ %182, %220 ], [ %92, %113 ]
  %641 = phi i32 [ %70, %629 ], [ %450, %557 ], [ %347, %366 ], [ %347, %373 ], [ %183, %201 ], [ %183, %207 ], [ %183, %214 ], [ %183, %220 ], [ %93, %113 ]
  %642 = phi ptr [ %634, %629 ], [ %559, %557 ], [ %71, %366 ], [ %71, %373 ], [ %133, %201 ], [ %133, %207 ], [ %133, %214 ], [ %133, %220 ], [ %96, %113 ]
  %643 = phi i32 [ %635, %629 ], [ %560, %557 ], [ %72, %366 ], [ %72, %373 ], [ %134, %201 ], [ %134, %207 ], [ %134, %214 ], [ %134, %220 ], [ %111, %113 ]
  br label %65, !llvm.loop !39

644:                                              ; preds = %65
  store ptr %71, ptr %13, align 8, !tbaa !25
  %645 = tail call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef %66) #2
  %646 = load ptr, ptr %13, align 8, !tbaa !25
  %647 = load ptr, ptr %15, align 8, !tbaa !26
  %648 = icmp eq ptr %647, %646
  br i1 %648, label %658, label %649

649:                                              ; preds = %644
  store i64 %67, ptr %9, align 8, !tbaa !22
  store i32 %68, ptr %11, align 4, !tbaa !24
  store i32 %70, ptr %7, align 8, !tbaa !21
  %650 = load ptr, ptr %1, align 8, !tbaa !20
  %651 = ptrtoint ptr %69 to i64
  %652 = ptrtoint ptr %650 to i64
  %653 = sub i64 %651, %652
  %654 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %655 = load i64, ptr %654, align 8, !tbaa !28
  %656 = add i64 %653, %655
  store i64 %656, ptr %654, align 8, !tbaa !28
  store ptr %69, ptr %1, align 8, !tbaa !20
  %657 = tail call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %645) #2
  br label %687

658:                                              ; preds = %644
  store i32 8, ptr %5, align 8, !tbaa !13
  br label %659

659:                                              ; preds = %65, %658
  %660 = phi ptr [ %646, %658 ], [ %71, %65 ]
  store i64 %67, ptr %9, align 8, !tbaa !22
  store i32 %68, ptr %11, align 4, !tbaa !24
  store i32 %70, ptr %7, align 8, !tbaa !21
  %661 = load ptr, ptr %1, align 8, !tbaa !20
  %662 = ptrtoint ptr %69 to i64
  %663 = ptrtoint ptr %661 to i64
  %664 = sub i64 %662, %663
  %665 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %666 = load i64, ptr %665, align 8, !tbaa !28
  %667 = add i64 %664, %666
  store i64 %667, ptr %665, align 8, !tbaa !28
  store ptr %69, ptr %1, align 8, !tbaa !20
  store ptr %660, ptr %13, align 8, !tbaa !25
  %668 = tail call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #2
  br label %687

669:                                              ; preds = %65
  store i64 %67, ptr %9, align 8, !tbaa !22
  store i32 %68, ptr %11, align 4, !tbaa !24
  store i32 %70, ptr %7, align 8, !tbaa !21
  %670 = load ptr, ptr %1, align 8, !tbaa !20
  %671 = ptrtoint ptr %69 to i64
  %672 = ptrtoint ptr %670 to i64
  %673 = sub i64 %671, %672
  %674 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %675 = load i64, ptr %674, align 8, !tbaa !28
  %676 = add i64 %673, %675
  store i64 %676, ptr %674, align 8, !tbaa !28
  store ptr %69, ptr %1, align 8, !tbaa !20
  store ptr %71, ptr %13, align 8, !tbaa !25
  %677 = tail call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef -3) #2
  br label %687

678:                                              ; preds = %65
  store i64 %67, ptr %9, align 8, !tbaa !22
  store i32 %68, ptr %11, align 4, !tbaa !24
  store i32 %70, ptr %7, align 8, !tbaa !21
  %679 = load ptr, ptr %1, align 8, !tbaa !20
  %680 = ptrtoint ptr %69 to i64
  %681 = ptrtoint ptr %679 to i64
  %682 = sub i64 %680, %681
  %683 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %684 = load i64, ptr %683, align 8, !tbaa !28
  %685 = add i64 %682, %684
  store i64 %685, ptr %683, align 8, !tbaa !28
  store ptr %69, ptr %1, align 8, !tbaa !20
  store ptr %71, ptr %13, align 8, !tbaa !25
  %686 = tail call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef -2) #2
  br label %687

687:                                              ; preds = %678, %669, %659, %649, %620, %532, %417, %376, %329, %262, %221, %165
  %688 = phi i32 [ %686, %678 ], [ %677, %669 ], [ %668, %659 ], [ %657, %649 ], [ %628, %620 ], [ %540, %532 ], [ %429, %417 ], [ %341, %329 ], [ %385, %376 ], [ %274, %262 ], [ %177, %165 ], [ %230, %221 ]
  ret i32 %688
}

declare i32 @inflate_fast(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @inflate_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @inflate_codes_free(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  tail call void %4(ptr noundef %6, ptr noundef %0) #2
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 64}
!6 = !{!"z_stream_s", !7, i64 0, !10, i64 8, !11, i64 16, !7, i64 24, !10, i64 32, !11, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !11, i64 96, !11, i64 104}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !7, i64 80}
!13 = !{!14, !10, i64 0}
!14 = !{!"inflate_codes_state", !10, i64 0, !10, i64 4, !8, i64 8, !8, i64 24, !8, i64 25, !7, i64 32, !7, i64 40}
!15 = !{!14, !8, i64 24}
!16 = !{!14, !8, i64 25}
!17 = !{!14, !7, i64 32}
!18 = !{!14, !7, i64 40}
!19 = !{!8, !8, i64 0}
!20 = !{!6, !7, i64 0}
!21 = !{!6, !10, i64 8}
!22 = !{!23, !11, i64 48}
!23 = !{!"inflate_blocks_state", !10, i64 0, !8, i64 8, !10, i64 40, !10, i64 44, !11, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !11, i64 96}
!24 = !{!23, !10, i64 44}
!25 = !{!23, !7, i64 80}
!26 = !{!23, !7, i64 72}
!27 = !{!23, !7, i64 64}
!28 = !{!6, !11, i64 16}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!10, !10, i64 0}
!32 = !{!14, !10, i64 4}
!33 = !{!6, !7, i64 48}
!34 = distinct !{!34, !30}
!35 = distinct !{!35, !30}
!36 = distinct !{!36, !30}
!37 = !{!23, !7, i64 56}
!38 = distinct !{!38, !30}
!39 = distinct !{!39, !30}
!40 = !{!6, !7, i64 72}
