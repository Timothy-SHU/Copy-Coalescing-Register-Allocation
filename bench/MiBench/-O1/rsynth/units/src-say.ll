; ModuleID = 'src/say.c'
source_filename = "src/say.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.klatt_global_t = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.darray_t = type { ptr, i32, i32, i16, i16 }

@.str = private unnamed_addr constant [60 x i8] c"$Id: say.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@say_id = dso_local local_unnamed_addr global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"say\00", align 1
@program = dso_local local_unnamed_addr global ptr @.str.1, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Spelling '%.*s'\0A\00", align 1
@ASCII = external local_unnamed_addr global [0 x ptr], align 8
@klatt_global = external local_unnamed_addr global %struct.klatt_global_t, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@file_write = external local_unnamed_addr global ptr, align 8
@once = internal unnamed_addr global i1 false, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@verbose = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Misc\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Verbose, show phonetic form\00", align 1
@help_only = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"Usage: %s [options as above] words to say\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"or     %s [options as above] < file-to-say\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@Revision = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@file_term = external local_unnamed_addr global ptr, align 8
@dict = external local_unnamed_addr global ptr, align 8
@dialect = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [17 x i8] c"Guess %p '%.*s'\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @spell_out(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %1, ptr noundef %0) #14
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %19, %7 ], [ 0, %3 ]
  %9 = phi ptr [ %12, %7 ], [ %0, %3 ]
  %10 = phi i32 [ %11, %7 ], [ %1, %3 ]
  %11 = add nsw i32 %10, -1
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  %13 = load i8, ptr %9, align 1, !tbaa !9
  %14 = and i8 %13, 127
  %15 = zext nneg i8 %14 to i64
  %16 = getelementptr inbounds [0 x ptr], ptr @ASCII, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = tail call i32 @xlate_string(ptr noundef %17, ptr noundef %2)
  %19 = add i32 %18, %8
  %20 = icmp sgt i32 %10, 1
  br i1 %20, label %7, label %21, !llvm.loop !10

21:                                               ; preds = %7, %3
  %22 = phi i32 [ 0, %3 ], [ %19, %7 ]
  ret i32 %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @xlate_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @__ctype_b_loc() #15
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %0, %2 ], [ %13, %5 ]
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %8 = sext i8 %7 to i64
  %9 = getelementptr inbounds i16, ptr %4, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !12
  %11 = and i16 %10, 8192
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds i8, ptr %6, i64 1
  br i1 %12, label %14, label %5, !llvm.loop !14

14:                                               ; preds = %5
  %15 = load i8, ptr %6, align 1, !tbaa !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %411, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.darray_t, ptr %1, i64 0, i32 1
  %19 = getelementptr inbounds %struct.darray_t, ptr %1, i64 0, i32 2
  br label %23

20:                                               ; preds = %402
  %21 = load i8, ptr %403, align 1, !tbaa !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %411, label %23, !llvm.loop !15

23:                                               ; preds = %17, %20
  %24 = phi i8 [ %15, %17 ], [ %21, %20 ]
  %25 = phi i32 [ 0, %17 ], [ %400, %20 ]
  %26 = phi ptr [ %6, %17 ], [ %403, %20 ]
  %27 = ptrtoint ptr %26 to i64
  %28 = load ptr, ptr %3, align 8, !tbaa !5
  %29 = sext i8 %24 to i64
  %30 = getelementptr inbounds i16, ptr %28, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !12
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 1024
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %174, label %35

35:                                               ; preds = %23, %52
  %36 = phi ptr [ %53, %52 ], [ %26, %23 ]
  %37 = load i8, ptr %36, align 1, !tbaa !9
  %38 = sext i8 %37 to i64
  %39 = getelementptr inbounds i16, ptr %28, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !12
  %41 = and i16 %40, 1024
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  switch i8 %37, label %56 [
    i8 46, label %44
    i8 45, label %44
    i8 39, label %44
    i8 0, label %126
  ]

44:                                               ; preds = %43, %43, %43
  %45 = getelementptr inbounds i8, ptr %36, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !9
  %47 = sext i8 %46 to i64
  %48 = getelementptr inbounds i16, ptr %28, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !12
  %50 = and i16 %49, 1024
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %35, %44
  %53 = getelementptr inbounds i8, ptr %36, i64 1
  br label %35, !llvm.loop !16

54:                                               ; preds = %44
  %55 = icmp eq i8 %37, 0
  br i1 %55, label %126, label %56

56:                                               ; preds = %43, %54
  %57 = zext i16 %40 to i32
  %58 = and i32 %57, 8196
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %126

60:                                               ; preds = %56
  %61 = and i32 %57, 2048
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %133, label %63

63:                                               ; preds = %60
  %64 = ptrtoint ptr %36 to i64
  %65 = ptrtoint ptr %26 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %123

69:                                               ; preds = %63, %101
  %70 = phi ptr [ %76, %101 ], [ %26, %63 ]
  %71 = phi i32 [ %114, %101 ], [ 0, %63 ]
  %72 = phi i32 [ %104, %101 ], [ 0, %63 ]
  %73 = phi i32 [ %113, %101 ], [ 0, %63 ]
  %74 = phi i32 [ %89, %101 ], [ 0, %63 ]
  %75 = phi i32 [ %102, %101 ], [ 0, %63 ]
  %76 = getelementptr inbounds i8, ptr %70, i64 1
  %77 = load i8, ptr %70, align 1, !tbaa !9
  %78 = icmp ne i32 %71, 0
  %79 = icmp ne i32 %72, 45
  %80 = and i1 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %69
  %82 = sext i8 %77 to i64
  %83 = getelementptr inbounds i16, ptr %28, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !12
  %85 = and i16 %84, 256
  %86 = icmp eq i16 %85, 0
  %87 = select i1 %86, i32 %74, i32 1
  br label %88

88:                                               ; preds = %81, %69
  %89 = phi i32 [ %74, %69 ], [ %87, %81 ]
  %90 = sext i8 %77 to i64
  %91 = getelementptr inbounds i16, ptr %28, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !12
  %93 = and i16 %92, 512
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %88
  %96 = tail call ptr @__ctype_toupper_loc() #15
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = getelementptr inbounds i32, ptr %97, i64 %90
  %99 = load i32, ptr %98, align 4, !tbaa !17
  %100 = trunc i32 %99 to i8
  br label %101

101:                                              ; preds = %95, %88
  %102 = phi i32 [ 1, %95 ], [ %75, %88 ]
  %103 = phi i8 [ %100, %95 ], [ %77, %88 ]
  %104 = sext i8 %103 to i32
  %105 = add i8 %103, -65
  %106 = tail call i8 @llvm.fshl.i8(i8 %105, i8 %105, i8 7)
  %107 = icmp ult i8 %106, 13
  %108 = zext nneg i8 %106 to i16
  %109 = lshr i16 5269, %108
  %110 = and i16 %109, 1
  %111 = icmp eq i16 %110, 0
  %112 = select i1 %111, i32 %73, i32 1
  %113 = select i1 %107, i32 %112, i32 %73
  %114 = add nuw nsw i32 %71, 1
  %115 = icmp eq i32 %114, %67
  br i1 %115, label %116, label %69, !llvm.loop !19

116:                                              ; preds = %101
  %117 = icmp eq i32 %113, 0
  %118 = icmp ne i32 %89, 0
  %119 = icmp eq i32 %102, 0
  %120 = select i1 %117, i1 true, i1 %118
  %121 = select i1 %120, i1 true, i1 %119
  %122 = zext i1 %121 to i32
  br label %123

123:                                              ; preds = %63, %116
  %124 = phi i32 [ 1, %63 ], [ %122, %116 ]
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %43, %123, %56, %54
  %127 = ptrtoint ptr %36 to i64
  %128 = ptrtoint ptr %26 to i64
  %129 = sub i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = tail call fastcc i32 @xlate_word(ptr noundef nonnull %26, i32 noundef %130, ptr noundef %1)
  %132 = add i32 %131, %25
  br label %398

133:                                              ; preds = %123, %60
  %134 = load i8, ptr %36, align 1, !tbaa !9
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %148, label %136

136:                                              ; preds = %133, %144
  %137 = phi i8 [ %146, %144 ], [ %134, %133 ]
  %138 = phi ptr [ %145, %144 ], [ %36, %133 ]
  %139 = sext i8 %137 to i64
  %140 = getelementptr inbounds i16, ptr %28, i64 %139
  %141 = load i16, ptr %140, align 2, !tbaa !12
  %142 = and i16 %141, 8196
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = getelementptr inbounds i8, ptr %138, i64 1
  %146 = load i8, ptr %145, align 1, !tbaa !9
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %136, !llvm.loop !20

148:                                              ; preds = %144, %136, %133
  %149 = phi ptr [ %36, %133 ], [ %145, %144 ], [ %138, %136 ]
  %150 = ptrtoint ptr %149 to i64
  %151 = ptrtoint ptr %26 to i64
  %152 = sub i64 %150, %151
  %153 = trunc i64 %152 to i32
  %154 = load ptr, ptr @stderr, align 8, !tbaa !5
  %155 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.2, i32 noundef %153, ptr noundef nonnull %26) #14
  %156 = icmp sgt i32 %153, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %148, %157
  %158 = phi i32 [ %169, %157 ], [ 0, %148 ]
  %159 = phi ptr [ %162, %157 ], [ %26, %148 ]
  %160 = phi i32 [ %161, %157 ], [ %153, %148 ]
  %161 = add nsw i32 %160, -1
  %162 = getelementptr inbounds i8, ptr %159, i64 1
  %163 = load i8, ptr %159, align 1, !tbaa !9
  %164 = and i8 %163, 127
  %165 = zext nneg i8 %164 to i64
  %166 = getelementptr inbounds [0 x ptr], ptr @ASCII, i64 0, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !5
  %168 = tail call i32 @xlate_string(ptr noundef %167, ptr noundef %1)
  %169 = add i32 %168, %158
  %170 = icmp sgt i32 %160, 1
  br i1 %170, label %157, label %171, !llvm.loop !10

171:                                              ; preds = %157, %148
  %172 = phi i32 [ 0, %148 ], [ %169, %157 ]
  %173 = add i32 %172, %25
  br label %398

174:                                              ; preds = %23
  %175 = and i32 %32, 2048
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  switch i8 %24, label %291 [
    i8 45, label %178
    i8 91, label %273
  ]

178:                                              ; preds = %177
  %179 = getelementptr inbounds i8, ptr %26, i64 1
  %180 = load i8, ptr %179, align 1, !tbaa !9
  %181 = sext i8 %180 to i64
  %182 = getelementptr inbounds i16, ptr %28, i64 %181
  %183 = load i16, ptr %182, align 2, !tbaa !12
  %184 = and i16 %183, 2048
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %271, label %186

186:                                              ; preds = %178, %174
  %187 = icmp eq i8 %24, 45
  %188 = select i1 %187, i32 -1, i32 1
  %189 = zext i1 %187 to i64
  %190 = getelementptr inbounds i8, ptr %26, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !9
  %192 = sext i8 %191 to i64
  %193 = getelementptr inbounds i16, ptr %28, i64 %192
  %194 = load i16, ptr %193, align 2, !tbaa !12
  %195 = and i16 %194, 2048
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %211, label %197

197:                                              ; preds = %186, %197
  %198 = phi i64 [ %206, %197 ], [ %192, %186 ]
  %199 = phi ptr [ %204, %197 ], [ %190, %186 ]
  %200 = phi i64 [ %203, %197 ], [ 0, %186 ]
  %201 = mul nsw i64 %200, 10
  %202 = add i64 %201, -48
  %203 = add i64 %202, %198
  %204 = getelementptr inbounds i8, ptr %199, i64 1
  %205 = load i8, ptr %204, align 1, !tbaa !9
  %206 = sext i8 %205 to i64
  %207 = getelementptr inbounds i16, ptr %28, i64 %206
  %208 = load i16, ptr %207, align 2, !tbaa !12
  %209 = and i16 %208, 2048
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %211, label %197, !llvm.loop !21

211:                                              ; preds = %197, %186
  %212 = phi i64 [ 0, %186 ], [ %203, %197 ]
  %213 = phi ptr [ %190, %186 ], [ %204, %197 ]
  %214 = phi i8 [ %191, %186 ], [ %205, %197 ]
  %215 = icmp eq i8 %214, 46
  br i1 %215, label %216, label %266

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %213, i64 1
  %218 = load i8, ptr %217, align 1, !tbaa !9
  %219 = sext i8 %218 to i64
  %220 = getelementptr inbounds i16, ptr %28, i64 %219
  %221 = load i16, ptr %220, align 2, !tbaa !12
  %222 = and i16 %221, 2048
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %266, label %224

224:                                              ; preds = %216
  %225 = sext i32 %188 to i64
  %226 = mul nsw i64 %212, %225
  %227 = tail call i32 @xlate_cardinal(i64 noundef %226, ptr noundef %1) #16
  %228 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4, ptr noundef %1)
  %229 = load ptr, ptr %3, align 8, !tbaa !5
  br label %230

230:                                              ; preds = %230, %224
  %231 = phi ptr [ %217, %224 ], [ %238, %230 ]
  %232 = load i8, ptr %231, align 1, !tbaa !9
  %233 = sext i8 %232 to i64
  %234 = getelementptr inbounds i16, ptr %229, i64 %233
  %235 = load i16, ptr %234, align 2, !tbaa !12
  %236 = and i16 %235, 2048
  %237 = icmp eq i16 %236, 0
  %238 = getelementptr inbounds i8, ptr %231, i64 1
  br i1 %237, label %239, label %230, !llvm.loop !22

239:                                              ; preds = %230
  %240 = add i32 %227, %25
  %241 = add i32 %240, %228
  %242 = ptrtoint ptr %231 to i64
  %243 = ptrtoint ptr %217 to i64
  %244 = sub i64 %242, %243
  %245 = trunc i64 %244 to i32
  %246 = load ptr, ptr @stderr, align 8, !tbaa !5
  %247 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %246, ptr noundef nonnull @.str.2, i32 noundef %245, ptr noundef nonnull %217) #14
  %248 = icmp sgt i32 %245, 0
  br i1 %248, label %249, label %263

249:                                              ; preds = %239, %249
  %250 = phi i32 [ %261, %249 ], [ 0, %239 ]
  %251 = phi ptr [ %254, %249 ], [ %217, %239 ]
  %252 = phi i32 [ %253, %249 ], [ %245, %239 ]
  %253 = add nsw i32 %252, -1
  %254 = getelementptr inbounds i8, ptr %251, i64 1
  %255 = load i8, ptr %251, align 1, !tbaa !9
  %256 = and i8 %255, 127
  %257 = zext nneg i8 %256 to i64
  %258 = getelementptr inbounds [0 x ptr], ptr @ASCII, i64 0, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !5
  %260 = tail call i32 @xlate_string(ptr noundef %259, ptr noundef %1)
  %261 = add i32 %260, %250
  %262 = icmp sgt i32 %252, 1
  br i1 %262, label %249, label %263, !llvm.loop !10

263:                                              ; preds = %249, %239
  %264 = phi i32 [ 0, %239 ], [ %261, %249 ]
  %265 = add i32 %241, %264
  br label %398

266:                                              ; preds = %216, %211
  %267 = sext i32 %188 to i64
  %268 = mul nsw i64 %212, %267
  %269 = tail call i32 @xlate_cardinal(i64 noundef %268, ptr noundef %1) #16
  %270 = add i32 %269, %25
  br label %398

271:                                              ; preds = %178
  %272 = icmp eq i8 %24, 91
  br i1 %272, label %273, label %291

273:                                              ; preds = %177, %271
  %274 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %26, i32 noundef 93) #17
  %275 = icmp eq ptr %274, null
  br i1 %275, label %291, label %276

276:                                              ; preds = %273, %280
  %277 = phi ptr [ %281, %280 ], [ %26, %273 ]
  %278 = load i8, ptr %277, align 1, !tbaa !9
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds i8, ptr %277, i64 1
  %282 = icmp eq i8 %278, 93
  br i1 %282, label %283, label %276, !llvm.loop !23

283:                                              ; preds = %276, %280
  %284 = phi ptr [ %281, %280 ], [ %277, %276 ]
  %285 = ptrtoint ptr %284 to i64
  %286 = ptrtoint ptr %26 to i64
  %287 = sub i64 %285, %286
  %288 = trunc i64 %287 to i32
  %289 = tail call fastcc i32 @xlate_word(ptr noundef nonnull %26, i32 noundef %288, ptr noundef %1)
  %290 = add i32 %289, %25
  br label %398

291:                                              ; preds = %177, %273, %271
  %292 = and i16 %31, 4
  %293 = icmp eq i16 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load i8, ptr %26, align 1, !tbaa !9
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %372, label %360

297:                                              ; preds = %291
  switch i8 %24, label %348 [
    i8 33, label %298
    i8 63, label %298
    i8 46, label %298
    i8 34, label %324
    i8 58, label %324
    i8 45, label %324
    i8 59, label %324
    i8 44, label %324
    i8 40, label %324
    i8 41, label %324
    i8 91, label %327
  ]

298:                                              ; preds = %297, %297, %297
  %299 = getelementptr inbounds i8, ptr %26, i64 1
  %300 = load i8, ptr %299, align 1, !tbaa !9
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %308, label %302

302:                                              ; preds = %298
  %303 = sext i8 %300 to i64
  %304 = getelementptr inbounds i16, ptr %28, i64 %303
  %305 = load i16, ptr %304, align 2, !tbaa !12
  %306 = and i16 %305, 8192
  %307 = icmp eq i16 %306, 0
  br i1 %307, label %322, label %308

308:                                              ; preds = %302, %298
  %309 = load i32, ptr %18, align 8, !tbaa !24
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %322, label %311

311:                                              ; preds = %308
  %312 = load i32, ptr %19, align 4, !tbaa !26
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %311
  %315 = load ptr, ptr %1, align 8, !tbaa !27
  br label %318

316:                                              ; preds = %311
  %317 = tail call ptr @Darray_find(ptr noundef %1, i32 noundef 0) #16
  br label %318

318:                                              ; preds = %314, %316
  %319 = phi ptr [ %315, %314 ], [ %317, %316 ]
  %320 = load i32, ptr %18, align 8, !tbaa !24
  %321 = load i32, ptr @verbose, align 4, !tbaa !17
  tail call void @say_phones(ptr noundef %319, i32 noundef %320, i32 noundef %321)
  store i32 0, ptr %18, align 8, !tbaa !24
  br label %322

322:                                              ; preds = %318, %308, %302
  %323 = tail call i32 @phone_append(ptr noundef %1, i32 noundef 32) #16
  br label %398

324:                                              ; preds = %297, %297, %297, %297, %297, %297, %297
  %325 = getelementptr inbounds i8, ptr %26, i64 1
  %326 = tail call i32 @phone_append(ptr noundef %1, i32 noundef 32) #16
  br label %398

327:                                              ; preds = %297
  %328 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %26, i32 noundef 93) #17
  %329 = ptrtoint ptr %328 to i64
  %330 = icmp eq ptr %328, null
  br i1 %330, label %346, label %331

331:                                              ; preds = %327
  %332 = getelementptr inbounds i8, ptr %26, i64 1
  %333 = icmp ult ptr %332, %328
  br i1 %333, label %334, label %344

334:                                              ; preds = %331
  %335 = sub i64 %329, %27
  %336 = getelementptr i8, ptr %26, i64 %335
  br label %337

337:                                              ; preds = %334, %337
  %338 = phi ptr [ %342, %337 ], [ %332, %334 ]
  %339 = load i8, ptr %338, align 1, !tbaa !9
  %340 = sext i8 %339 to i32
  %341 = tail call i32 @phone_append(ptr noundef %1, i32 noundef %340) #16
  %342 = getelementptr inbounds i8, ptr %338, i64 1
  %343 = icmp eq ptr %342, %336
  br i1 %343, label %344, label %337, !llvm.loop !28

344:                                              ; preds = %337, %331
  %345 = getelementptr inbounds i8, ptr %328, i64 1
  br label %346

346:                                              ; preds = %327, %344
  %347 = phi ptr [ %345, %344 ], [ %26, %327 ]
  br i1 %330, label %348, label %398

348:                                              ; preds = %346, %297
  %349 = phi ptr [ %26, %297 ], [ %347, %346 ]
  %350 = load ptr, ptr @stderr, align 8, !tbaa !5
  %351 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %350, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef nonnull %26) #14
  %352 = load i8, ptr %26, align 1, !tbaa !9
  %353 = and i8 %352, 127
  %354 = zext nneg i8 %353 to i64
  %355 = getelementptr inbounds [0 x ptr], ptr @ASCII, i64 0, i64 %354
  %356 = load ptr, ptr %355, align 8, !tbaa !5
  %357 = tail call i32 @xlate_string(ptr noundef %356, ptr noundef %1)
  %358 = add i32 %357, %25
  %359 = getelementptr inbounds i8, ptr %349, i64 1
  br label %398

360:                                              ; preds = %294, %368
  %361 = phi i8 [ %370, %368 ], [ %295, %294 ]
  %362 = phi ptr [ %369, %368 ], [ %26, %294 ]
  %363 = sext i8 %361 to i64
  %364 = getelementptr inbounds i16, ptr %28, i64 %363
  %365 = load i16, ptr %364, align 2, !tbaa !12
  %366 = and i16 %365, 8192
  %367 = icmp eq i16 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %360
  %369 = getelementptr inbounds i8, ptr %362, i64 1
  %370 = load i8, ptr %369, align 1, !tbaa !9
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %372, label %360, !llvm.loop !29

372:                                              ; preds = %360, %368, %294
  %373 = phi ptr [ %26, %294 ], [ %362, %360 ], [ %369, %368 ]
  %374 = ptrtoint ptr %373 to i64
  %375 = ptrtoint ptr %26 to i64
  %376 = sub i64 %374, %375
  %377 = trunc i64 %376 to i32
  %378 = load ptr, ptr @stderr, align 8, !tbaa !5
  %379 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %378, ptr noundef nonnull @.str.2, i32 noundef %377, ptr noundef nonnull %26) #14
  %380 = icmp sgt i32 %377, 0
  br i1 %380, label %381, label %395

381:                                              ; preds = %372, %381
  %382 = phi i32 [ %393, %381 ], [ 0, %372 ]
  %383 = phi ptr [ %386, %381 ], [ %26, %372 ]
  %384 = phi i32 [ %385, %381 ], [ %377, %372 ]
  %385 = add nsw i32 %384, -1
  %386 = getelementptr inbounds i8, ptr %383, i64 1
  %387 = load i8, ptr %383, align 1, !tbaa !9
  %388 = and i8 %387, 127
  %389 = zext nneg i8 %388 to i64
  %390 = getelementptr inbounds [0 x ptr], ptr @ASCII, i64 0, i64 %389
  %391 = load ptr, ptr %390, align 8, !tbaa !5
  %392 = tail call i32 @xlate_string(ptr noundef %391, ptr noundef %1)
  %393 = add i32 %392, %382
  %394 = icmp sgt i32 %384, 1
  br i1 %394, label %381, label %395, !llvm.loop !10

395:                                              ; preds = %381, %372
  %396 = phi i32 [ 0, %372 ], [ %393, %381 ]
  %397 = add i32 %396, %25
  br label %398

398:                                              ; preds = %346, %263, %266, %395, %348, %324, %322, %283, %126, %171
  %399 = phi ptr [ %36, %126 ], [ %149, %171 ], [ %284, %283 ], [ %359, %348 ], [ %347, %346 ], [ %325, %324 ], [ %299, %322 ], [ %373, %395 ], [ %231, %263 ], [ %213, %266 ]
  %400 = phi i32 [ %132, %126 ], [ %173, %171 ], [ %290, %283 ], [ %358, %348 ], [ %25, %346 ], [ %25, %324 ], [ %25, %322 ], [ %397, %395 ], [ %265, %263 ], [ %270, %266 ]
  %401 = load ptr, ptr %3, align 8, !tbaa !5
  br label %402

402:                                              ; preds = %402, %398
  %403 = phi ptr [ %399, %398 ], [ %410, %402 ]
  %404 = load i8, ptr %403, align 1, !tbaa !9
  %405 = sext i8 %404 to i64
  %406 = getelementptr inbounds i16, ptr %401, i64 %405
  %407 = load i16, ptr %406, align 2, !tbaa !12
  %408 = and i16 %407, 8192
  %409 = icmp eq i16 %408, 0
  %410 = getelementptr inbounds i8, ptr %403, i64 1
  br i1 %409, label %20, label %402, !llvm.loop !30

411:                                              ; preds = %20, %14
  %412 = phi i32 [ 0, %14 ], [ %400, %20 ]
  ret i32 %412
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @suspect_word(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %63

4:                                                ; preds = %2
  %5 = tail call ptr @__ctype_b_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %4, %41
  %8 = phi ptr [ %0, %4 ], [ %14, %41 ]
  %9 = phi i32 [ 0, %4 ], [ %54, %41 ]
  %10 = phi i32 [ 0, %4 ], [ %44, %41 ]
  %11 = phi i32 [ 0, %4 ], [ %53, %41 ]
  %12 = phi i32 [ 0, %4 ], [ %29, %41 ]
  %13 = phi i32 [ 0, %4 ], [ %42, %41 ]
  %14 = getelementptr inbounds i8, ptr %8, i64 1
  %15 = load i8, ptr %8, align 1, !tbaa !9
  %16 = icmp ne i32 %9, 0
  %17 = icmp ne i32 %10, 45
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %28

19:                                               ; preds = %7
  %20 = tail call ptr @__ctype_b_loc() #15
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = sext i8 %15 to i64
  %23 = getelementptr inbounds i16, ptr %21, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !12
  %25 = and i16 %24, 256
  %26 = icmp eq i16 %25, 0
  %27 = select i1 %26, i32 %12, i32 1
  br label %28

28:                                               ; preds = %19, %7
  %29 = phi i32 [ %12, %7 ], [ %27, %19 ]
  %30 = sext i8 %15 to i64
  %31 = getelementptr inbounds i16, ptr %6, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !12
  %33 = and i16 %32, 512
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = tail call ptr @__ctype_toupper_loc() #15
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %38 = getelementptr inbounds i32, ptr %37, i64 %30
  %39 = load i32, ptr %38, align 4, !tbaa !17
  %40 = trunc i32 %39 to i8
  br label %41

41:                                               ; preds = %35, %28
  %42 = phi i32 [ 1, %35 ], [ %13, %28 ]
  %43 = phi i8 [ %40, %35 ], [ %15, %28 ]
  %44 = sext i8 %43 to i32
  %45 = add i8 %43, -65
  %46 = tail call i8 @llvm.fshl.i8(i8 %45, i8 %45, i8 7)
  %47 = icmp ult i8 %46, 13
  %48 = zext nneg i8 %46 to i16
  %49 = lshr i16 5269, %48
  %50 = and i16 %49, 1
  %51 = icmp eq i16 %50, 0
  %52 = select i1 %51, i32 %11, i32 1
  %53 = select i1 %47, i32 %52, i32 %11
  %54 = add nuw nsw i32 %9, 1
  %55 = icmp eq i32 %54, %1
  br i1 %55, label %56, label %7, !llvm.loop !19

56:                                               ; preds = %41
  %57 = icmp eq i32 %53, 0
  %58 = icmp ne i32 %29, 0
  %59 = icmp eq i32 %42, 0
  %60 = select i1 %57, i1 true, i1 %58
  %61 = select i1 %60, i1 true, i1 %59
  %62 = zext i1 %61 to i32
  br label %63

63:                                               ; preds = %56, %2
  %64 = phi i32 [ 1, %2 ], [ %62, %56 ]
  ret i32 %64
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @say_phones(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.darray_t, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 3
  store i16 1, ptr %5, align 8, !tbaa !31
  %6 = trunc i32 %1 to i16
  %7 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 4
  store i16 %6, ptr %7, align 2, !tbaa !32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %8 = call i32 @phone_to_elm(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %44, label %10

10:                                               ; preds = %3
  %11 = load i64, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 7), align 8, !tbaa !33
  %12 = trunc i64 %11 to i32
  %13 = mul i32 %8, %12
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 1
  %16 = call noalias ptr @malloc(i64 noundef %15) #18
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr @stderr, align 8, !tbaa !5
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.3, i32 noundef %1, ptr noundef %0) #14
  br label %21

21:                                               ; preds = %18, %10
  %22 = icmp eq ptr %16, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !24
  %26 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !26
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %25, 0
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load ptr, ptr %4, align 8, !tbaa !27
  br label %35

33:                                               ; preds = %23
  %34 = call ptr @Darray_find(ptr noundef nonnull %4, i32 noundef 0) #16
  br label %35

35:                                               ; preds = %31, %33
  %36 = phi ptr [ %32, %31 ], [ %34, %33 ]
  %37 = call i32 @holmes(i32 noundef %25, ptr noundef %36, i32 noundef %13, ptr noundef nonnull %16) #16
  %38 = load ptr, ptr @file_write, align 8, !tbaa !5
  %39 = icmp eq ptr %38, null
  %40 = load i1, ptr @once, align 4
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  call void %38(i32 noundef %37, ptr noundef nonnull %16) #16
  br label %43

43:                                               ; preds = %42, %35
  call void @free(ptr noundef %16) #16
  br label %44

44:                                               ; preds = %21, %43, %3
  call void @darray_free(ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

declare i32 @phone_to_elm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

declare i32 @holmes(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

declare void @darray_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @xlate_word(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i8, ptr %0, align 1, !tbaa !9
  %5 = icmp eq i8 %4, 91
  br i1 %5, label %161, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @dict, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %72, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @dict_find(ptr noundef nonnull %0, i32 noundef %1) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i8, ptr %10, align 1, !tbaa !9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %44, label %23

15:                                               ; preds = %9
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  %18 = icmp slt i32 %1, 1
  br i1 %18, label %68, label %48

19:                                               ; preds = %34, %23
  %20 = phi i32 [ %26, %23 ], [ %41, %34 ]
  %21 = load i8, ptr %28, align 1, !tbaa !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %44, label %23, !llvm.loop !36

23:                                               ; preds = %12, %19
  %24 = phi i8 [ %21, %19 ], [ %13, %12 ]
  %25 = phi ptr [ %28, %19 ], [ %10, %12 ]
  %26 = phi i32 [ %20, %19 ], [ 0, %12 ]
  %27 = load ptr, ptr @dialect, align 8, !tbaa !5
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  %29 = zext i8 %24 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = load i8, ptr %31, align 1, !tbaa !9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %19, label %34

34:                                               ; preds = %23, %34
  %35 = phi i8 [ %42, %34 ], [ %32, %23 ]
  %36 = phi ptr [ %38, %34 ], [ %31, %23 ]
  %37 = phi i32 [ %41, %34 ], [ %26, %23 ]
  %38 = getelementptr inbounds i8, ptr %36, i64 1
  %39 = sext i8 %35 to i32
  %40 = tail call i32 @phone_append(ptr noundef %2, i32 noundef %39) #16
  %41 = add i32 %37, 1
  %42 = load i8, ptr %38, align 1, !tbaa !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %19, label %34, !llvm.loop !37

44:                                               ; preds = %19, %12
  %45 = phi i32 [ 0, %12 ], [ %20, %19 ]
  %46 = tail call i32 @phone_append(ptr noundef %2, i32 noundef 32) #16
  tail call void @free(ptr noundef %10) #16
  %47 = add i32 %45, 1
  br label %68

48:                                               ; preds = %15, %66
  %49 = phi ptr [ %53, %66 ], [ %0, %15 ]
  %50 = load i8, ptr %49, align 1, !tbaa !9
  %51 = add i8 %50, -45
  %52 = icmp ult i8 %51, 2
  %53 = getelementptr inbounds i8, ptr %49, i64 1
  br i1 %52, label %54, label %66

54:                                               ; preds = %48
  %55 = ptrtoint ptr %49 to i64
  %56 = ptrtoint ptr %0 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = tail call fastcc i32 @xlate_word(ptr noundef nonnull %0, i32 noundef %58, ptr noundef %2)
  %60 = ptrtoint ptr %17 to i64
  %61 = ptrtoint ptr %53 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = tail call fastcc i32 @xlate_word(ptr noundef nonnull %53, i32 noundef %63, ptr noundef %2)
  %65 = add i32 %64, %59
  br label %68

66:                                               ; preds = %48
  %67 = icmp uge ptr %53, %17
  br i1 %67, label %68, label %48, !llvm.loop !38

68:                                               ; preds = %66, %15, %54, %44
  %69 = phi i32 [ %45, %44 ], [ %65, %54 ], [ 0, %15 ], [ 0, %66 ]
  %70 = phi i32 [ %47, %44 ], [ %65, %54 ], [ undef, %15 ], [ undef, %66 ]
  %71 = phi i1 [ false, %44 ], [ false, %54 ], [ %18, %15 ], [ %67, %66 ]
  br i1 %71, label %72, label %184

72:                                               ; preds = %68, %6
  %73 = phi i32 [ %69, %68 ], [ 0, %6 ]
  %74 = icmp sgt i32 %1, 0
  br i1 %74, label %75, label %131

75:                                               ; preds = %72
  %76 = tail call ptr @__ctype_b_loc() #15
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  br label %78

78:                                               ; preds = %110, %75
  %79 = phi ptr [ %0, %75 ], [ %85, %110 ]
  %80 = phi i32 [ 0, %75 ], [ %123, %110 ]
  %81 = phi i32 [ 0, %75 ], [ %113, %110 ]
  %82 = phi i32 [ 0, %75 ], [ %122, %110 ]
  %83 = phi i32 [ 0, %75 ], [ %98, %110 ]
  %84 = phi i32 [ 0, %75 ], [ %111, %110 ]
  %85 = getelementptr inbounds i8, ptr %79, i64 1
  %86 = load i8, ptr %79, align 1, !tbaa !9
  %87 = icmp ne i32 %80, 0
  %88 = icmp ne i32 %81, 45
  %89 = and i1 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %78
  %91 = sext i8 %86 to i64
  %92 = getelementptr inbounds i16, ptr %77, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !12
  %94 = and i16 %93, 256
  %95 = icmp eq i16 %94, 0
  %96 = select i1 %95, i32 %83, i32 1
  br label %97

97:                                               ; preds = %90, %78
  %98 = phi i32 [ %83, %78 ], [ %96, %90 ]
  %99 = sext i8 %86 to i64
  %100 = getelementptr inbounds i16, ptr %77, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !12
  %102 = and i16 %101, 512
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %97
  %105 = tail call ptr @__ctype_toupper_loc() #15
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  %107 = getelementptr inbounds i32, ptr %106, i64 %99
  %108 = load i32, ptr %107, align 4, !tbaa !17
  %109 = trunc i32 %108 to i8
  br label %110

110:                                              ; preds = %104, %97
  %111 = phi i32 [ 1, %104 ], [ %84, %97 ]
  %112 = phi i8 [ %109, %104 ], [ %86, %97 ]
  %113 = sext i8 %112 to i32
  %114 = add i8 %112, -65
  %115 = tail call i8 @llvm.fshl.i8(i8 %114, i8 %114, i8 7)
  %116 = icmp ult i8 %115, 13
  %117 = zext nneg i8 %115 to i16
  %118 = lshr i16 5269, %117
  %119 = and i16 %118, 1
  %120 = icmp eq i16 %119, 0
  %121 = select i1 %120, i32 %82, i32 1
  %122 = select i1 %116, i32 %121, i32 %82
  %123 = add nuw nsw i32 %80, 1
  %124 = icmp eq i32 %123, %1
  br i1 %124, label %125, label %78, !llvm.loop !19

125:                                              ; preds = %110
  %126 = icmp ne i32 %122, 0
  %127 = icmp eq i32 %98, 0
  %128 = icmp ne i32 %111, 0
  %129 = select i1 %126, i1 %127, i1 false
  %130 = select i1 %129, i1 %128, i1 false
  br i1 %130, label %149, label %131

131:                                              ; preds = %72, %125
  %132 = load ptr, ptr @stderr, align 8, !tbaa !5
  %133 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.2, i32 noundef %1, ptr noundef nonnull %0) #14
  %134 = icmp sgt i32 %1, 0
  br i1 %134, label %135, label %184

135:                                              ; preds = %131, %135
  %136 = phi i32 [ %147, %135 ], [ 0, %131 ]
  %137 = phi ptr [ %140, %135 ], [ %0, %131 ]
  %138 = phi i32 [ %139, %135 ], [ %1, %131 ]
  %139 = add nsw i32 %138, -1
  %140 = getelementptr inbounds i8, ptr %137, i64 1
  %141 = load i8, ptr %137, align 1, !tbaa !9
  %142 = and i8 %141, 127
  %143 = zext nneg i8 %142 to i64
  %144 = getelementptr inbounds [0 x ptr], ptr @ASCII, i64 0, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !5
  %146 = tail call i32 @xlate_string(ptr noundef %145, ptr noundef %2)
  %147 = add i32 %146, %136
  %148 = icmp sgt i32 %138, 1
  br i1 %148, label %135, label %184, !llvm.loop !10

149:                                              ; preds = %125
  %150 = load ptr, ptr @dict, align 8, !tbaa !5
  %151 = icmp ne ptr %150, null
  %152 = load i32, ptr @verbose, align 4
  %153 = icmp ne i32 %152, 0
  %154 = select i1 %151, i1 true, i1 %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load ptr, ptr @stderr, align 8, !tbaa !5
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef nonnull @.str.15, ptr noundef %150, i32 noundef %1, ptr noundef nonnull %0) #14
  br label %158

158:                                              ; preds = %149, %155
  %159 = tail call i32 @NRL(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #16
  %160 = add i32 %159, %73
  br label %180

161:                                              ; preds = %3
  %162 = getelementptr inbounds i8, ptr %0, i64 1
  %163 = sext i32 %1 to i64
  %164 = getelementptr i8, ptr %162, i64 %163
  %165 = getelementptr i8, ptr %164, i64 -2
  %166 = load i8, ptr %165, align 1, !tbaa !9
  %167 = icmp eq i8 %166, 93
  %168 = select i1 %167, i32 -2, i32 -1
  %169 = add nsw i32 %168, %1
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %161, %171
  %172 = phi i32 [ %178, %171 ], [ 0, %161 ]
  %173 = phi ptr [ %174, %171 ], [ %162, %161 ]
  %174 = getelementptr inbounds i8, ptr %173, i64 1
  %175 = load i8, ptr %173, align 1, !tbaa !9
  %176 = sext i8 %175 to i32
  %177 = tail call i32 @phone_append(ptr noundef %2, i32 noundef %176) #16
  %178 = add nuw nsw i32 %172, 1
  %179 = icmp eq i32 %178, %169
  br i1 %179, label %180, label %171, !llvm.loop !39

180:                                              ; preds = %171, %161, %158
  %181 = phi i32 [ %160, %158 ], [ 0, %161 ], [ %169, %171 ]
  %182 = tail call i32 @phone_append(ptr noundef %2, i32 noundef 32) #16
  %183 = add i32 %181, 1
  br label %184

184:                                              ; preds = %135, %131, %68, %180
  %185 = phi i32 [ %183, %180 ], [ %70, %68 ], [ 0, %131 ], [ %147, %135 ]
  ret i32 %185
}

declare i32 @xlate_cardinal(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @phone_append(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @concat_args(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %19

4:                                                ; preds = %2
  %5 = zext nneg i32 %0 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %15, %6 ]
  %8 = phi i32 [ 0, %4 ], [ %14, %6 ]
  %9 = getelementptr inbounds ptr, ptr %1, i64 %7
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #17
  %12 = trunc i64 %11 to i32
  %13 = add i32 %8, 1
  %14 = add i32 %13, %12
  %15 = add nuw nsw i64 %7, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %17, label %6, !llvm.loop !40

17:                                               ; preds = %6
  %18 = sext i32 %14 to i64
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i64 [ 0, %2 ], [ %18, %17 ]
  %21 = tail call noalias ptr @malloc(i64 noundef %20) #18
  %22 = icmp ne ptr %21, null
  %23 = icmp sgt i32 %0, 1
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %19
  %26 = sext i32 %0 to i64
  %27 = zext i32 %0 to i64
  br label %28

28:                                               ; preds = %25, %44
  %29 = phi i64 [ 1, %25 ], [ %31, %44 ]
  %30 = phi ptr [ %21, %25 ], [ %49, %44 ]
  %31 = add nuw nsw i64 %29, 1
  %32 = getelementptr inbounds ptr, ptr %1, i64 %29
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = load i8, ptr %33, align 1, !tbaa !9
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %28, %36
  %37 = phi i8 [ %42, %36 ], [ %34, %28 ]
  %38 = phi ptr [ %40, %36 ], [ %33, %28 ]
  %39 = phi ptr [ %41, %36 ], [ %30, %28 ]
  %40 = getelementptr inbounds i8, ptr %38, i64 1
  %41 = getelementptr inbounds i8, ptr %39, i64 1
  store i8 %37, ptr %39, align 1, !tbaa !9
  %42 = load i8, ptr %40, align 1, !tbaa !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %36, !llvm.loop !41

44:                                               ; preds = %36, %28
  %45 = phi ptr [ %30, %28 ], [ %41, %36 ]
  %46 = icmp slt i64 %31, %26
  %47 = select i1 %46, i8 32, i8 0
  %48 = zext i1 %46 to i64
  %49 = getelementptr inbounds i8, ptr %45, i64 %48
  store i8 %47, ptr %45, align 1, !tbaa !9
  %50 = icmp eq i64 %31, %27
  br i1 %50, label %51, label %28, !llvm.loop !42

51:                                               ; preds = %44, %19
  ret ptr %21
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @say_string(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.darray_t, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.darray_t, ptr %2, i64 0, i32 3
  store i16 1, ptr %3, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.darray_t, ptr %2, i64 0, i32 4
  store i16 128, ptr %4, align 2, !tbaa !32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %5 = call i32 @xlate_string(ptr noundef %0, ptr noundef nonnull %2)
  %6 = getelementptr inbounds %struct.darray_t, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.darray_t, ptr %2, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !26
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8, !tbaa !27
  br label %17

15:                                               ; preds = %9
  %16 = call ptr @Darray_find(ptr noundef nonnull %2, i32 noundef 0) #16
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ]
  %19 = load i32, ptr %6, align 8, !tbaa !24
  %20 = load i32, ptr @verbose, align 4, !tbaa !17
  call void @say_phones(ptr noundef %18, i32 noundef %19, i32 noundef %20)
  br label %21

21:                                               ; preds = %17, %1
  call void @darray_free(ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @darray_fget(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %6, %2
  %4 = tail call i32 @fgetc(ptr noundef %0)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @phone_append(ptr noundef %1, i32 noundef %4) #16
  %8 = icmp eq i32 %4, 10
  br i1 %8, label %9, label %3, !llvm.loop !43

9:                                                ; preds = %6, %3
  %10 = tail call i32 @phone_append(ptr noundef %1, i32 noundef 0) #16
  %11 = getelementptr inbounds %struct.darray_t, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !24
  %13 = add i32 %12, -1
  ret i32 %13
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @say_file(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.darray_t, align 8
  %4 = alloca %struct.darray_t, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %5 = tail call noalias ptr @fopen(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 28, i64 1, ptr %8) #14
  tail call void @exit(i32 noundef 1) #19
  unreachable

10:                                               ; preds = %1
  %11 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull %2) #16
  %12 = call i32 @fclose(ptr noundef nonnull %5)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %13 = getelementptr inbounds %struct.darray_t, ptr %3, i64 0, i32 3
  store i16 1, ptr %13, align 8, !tbaa !31
  %14 = getelementptr inbounds %struct.darray_t, ptr %3, i64 0, i32 4
  store i16 128, ptr %14, align 2, !tbaa !32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 3
  store i16 1, ptr %15, align 8, !tbaa !31
  %16 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 4
  store i16 128, ptr %16, align 2, !tbaa !32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.darray_t, ptr %3, i64 0, i32 1
  %18 = getelementptr inbounds %struct.darray_t, ptr %3, i64 0, i32 2
  br label %19

19:                                               ; preds = %43, %10
  %20 = phi i64 [ 0, %10 ], [ %34, %43 ]
  br label %21

21:                                               ; preds = %24, %19
  %22 = call i32 @fgetc(ptr noundef %0)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = call i32 @phone_append(ptr noundef nonnull %3, i32 noundef %22) #16
  %26 = icmp eq i32 %22, 10
  br i1 %26, label %27, label %21, !llvm.loop !43

27:                                               ; preds = %21, %24
  %28 = call i32 @phone_append(ptr noundef nonnull %3, i32 noundef 0) #16
  %29 = load i32, ptr %17, align 8, !tbaa !24
  %30 = icmp ne i32 %29, 1
  %31 = icmp ult i64 %20, 500
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = add nuw nsw i64 %20, 1
  %35 = load i32, ptr %18, align 4, !tbaa !26
  %36 = icmp eq i32 %35, 0
  %37 = icmp eq i32 %29, 0
  %38 = or i1 %37, %36
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %3, align 8, !tbaa !27
  br label %43

41:                                               ; preds = %33
  %42 = call ptr @Darray_find(ptr noundef nonnull %3, i32 noundef 0) #16
  br label %43

43:                                               ; preds = %39, %41
  %44 = phi ptr [ %40, %39 ], [ %42, %41 ]
  %45 = call i32 @xlate_string(ptr noundef %44, ptr noundef nonnull %4)
  store i32 0, ptr %17, align 8, !tbaa !24
  br label %19, !llvm.loop !44

46:                                               ; preds = %27
  %47 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !24
  %49 = icmp ne i32 %48, 0
  %50 = load i64, ptr %2, align 8
  %51 = icmp sgt i64 %50, 0
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %73

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 2
  br label %55

55:                                               ; preds = %53, %66
  %56 = phi i64 [ 0, %53 ], [ %70, %66 ]
  %57 = load i32, ptr %54, align 4, !tbaa !26
  %58 = icmp eq i32 %57, 0
  %59 = load i32, ptr %47, align 8
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %4, align 8, !tbaa !27
  br label %66

64:                                               ; preds = %55
  %65 = call ptr @Darray_find(ptr noundef nonnull %4, i32 noundef 0) #16
  br label %66

66:                                               ; preds = %62, %64
  %67 = phi ptr [ %63, %62 ], [ %65, %64 ]
  %68 = load i32, ptr %47, align 8, !tbaa !24
  %69 = load i32, ptr @verbose, align 4, !tbaa !17
  call void @say_phones(ptr noundef %67, i32 noundef %68, i32 noundef %69)
  store i1 true, ptr @once, align 4
  %70 = add nuw nsw i64 %56, 1
  %71 = load i64, ptr %2, align 8, !tbaa !45
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %55, label %73, !llvm.loop !46

73:                                               ; preds = %66, %46
  call void @darray_free(ptr noundef nonnull %4) #16
  call void @darray_free(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = alloca %struct.darray_t, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  store ptr %5, ptr @program, align 8, !tbaa !5
  %6 = tail call i32 @audio_init(i32 noundef %0, ptr noundef nonnull %1) #16
  %7 = tail call i32 @init_synth(i32 noundef %6, ptr noundef nonnull %1) #16
  %8 = tail call i32 @init_holmes(i32 noundef %7, ptr noundef nonnull %1) #16
  %9 = tail call i32 @dict_init(i32 noundef %8, ptr noundef nonnull %1) #16
  %10 = tail call i32 @file_init(i32 noundef %9, ptr noundef nonnull %1) #16
  %11 = tail call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef nonnull @.str.9, i32 noundef %10, ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef null, ptr noundef nonnull @verbose, ptr noundef nonnull @.str.11, ptr noundef null) #16
  %12 = load i32, ptr @help_only, align 4, !tbaa !17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr @stderr, align 8, !tbaa !5
  %16 = load ptr, ptr @program, align 8, !tbaa !5
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.12, ptr noundef %16) #14
  %18 = load ptr, ptr @stderr, align 8, !tbaa !5
  %19 = load ptr, ptr @program, align 8, !tbaa !5
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.13, ptr noundef %19) #14
  %21 = load ptr, ptr @stderr, align 8, !tbaa !5
  %22 = load ptr, ptr @Revision, align 8, !tbaa !5
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.14, ptr noundef %22) #14
  br label %91

24:                                               ; preds = %3
  %25 = icmp sgt i32 %11, 1
  br i1 %25, label %26, label %89

26:                                               ; preds = %24
  %27 = zext nneg i32 %11 to i64
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i64 [ 1, %26 ], [ %37, %28 ]
  %30 = phi i32 [ 0, %26 ], [ %36, %28 ]
  %31 = getelementptr inbounds ptr, ptr %1, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #17
  %34 = trunc i64 %33 to i32
  %35 = add i32 %30, 1
  %36 = add i32 %35, %34
  %37 = add nuw nsw i64 %29, 1
  %38 = icmp eq i64 %37, %27
  br i1 %38, label %39, label %28, !llvm.loop !40

39:                                               ; preds = %28
  %40 = sext i32 %36 to i64
  %41 = tail call noalias ptr @malloc(i64 noundef %40) #18
  %42 = icmp eq ptr %41, null
  br i1 %42, label %91, label %43

43:                                               ; preds = %39
  %44 = zext nneg i32 %11 to i64
  %45 = zext nneg i32 %11 to i64
  br label %46

46:                                               ; preds = %62, %43
  %47 = phi i64 [ 1, %43 ], [ %49, %62 ]
  %48 = phi ptr [ %41, %43 ], [ %67, %62 ]
  %49 = add nuw nsw i64 %47, 1
  %50 = getelementptr inbounds ptr, ptr %1, i64 %47
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = load i8, ptr %51, align 1, !tbaa !9
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %46, %54
  %55 = phi i8 [ %60, %54 ], [ %52, %46 ]
  %56 = phi ptr [ %58, %54 ], [ %51, %46 ]
  %57 = phi ptr [ %59, %54 ], [ %48, %46 ]
  %58 = getelementptr inbounds i8, ptr %56, i64 1
  %59 = getelementptr inbounds i8, ptr %57, i64 1
  store i8 %55, ptr %57, align 1, !tbaa !9
  %60 = load i8, ptr %58, align 1, !tbaa !9
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %54, !llvm.loop !41

62:                                               ; preds = %54, %46
  %63 = phi ptr [ %48, %46 ], [ %59, %54 ]
  %64 = icmp ult i64 %49, %44
  %65 = select i1 %64, i8 32, i8 0
  %66 = zext i1 %64 to i64
  %67 = getelementptr inbounds i8, ptr %63, i64 %66
  store i8 %65, ptr %63, align 1, !tbaa !9
  %68 = icmp eq i64 %49, %45
  br i1 %68, label %69, label %46, !llvm.loop !42

69:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %70 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 3
  store i16 1, ptr %70, align 8, !tbaa !31
  %71 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 4
  store i16 128, ptr %71, align 2, !tbaa !32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %72 = call i32 @xlate_string(ptr noundef nonnull %41, ptr noundef nonnull %4)
  %73 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !24
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.darray_t, ptr %4, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !26
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %4, align 8, !tbaa !27
  br label %84

82:                                               ; preds = %76
  %83 = call ptr @Darray_find(ptr noundef nonnull %4, i32 noundef 0) #16
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi ptr [ %81, %80 ], [ %83, %82 ]
  %86 = load i32, ptr %73, align 8, !tbaa !24
  %87 = load i32, ptr @verbose, align 4, !tbaa !17
  call void @say_phones(ptr noundef %85, i32 noundef %86, i32 noundef %87)
  br label %88

88:                                               ; preds = %69, %84
  call void @darray_free(ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  call void @free(ptr noundef %41) #16
  br label %91

89:                                               ; preds = %24
  %90 = load ptr, ptr @stdin, align 8, !tbaa !5
  tail call void @say_file(ptr noundef %90)
  br label %91

91:                                               ; preds = %39, %88, %89, %14
  %92 = load ptr, ptr @file_term, align 8, !tbaa !5
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  call void %92() #16
  br label %95

95:                                               ; preds = %94, %91
  call void @audio_term() #16
  call void @term_holmes() #16
  %96 = load ptr, ptr @dict, align 8, !tbaa !5
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  call void @dict_term() #16
  br label %99

99:                                               ; preds = %98, %95
  ret i32 0
}

declare i32 @audio_init(i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @init_synth(i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @init_holmes(i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @dict_init(i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @file_init(i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @getargs(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @audio_term() local_unnamed_addr #5

declare void @term_holmes() local_unnamed_addr #5

declare void @dict_term() local_unnamed_addr #5

declare ptr @Darray_find(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @dict_find(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @NRL(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { cold }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { noreturn nounwind }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !7, i64 0}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = !{!25, !18, i64 8}
!25 = !{!"", !6, i64 0, !18, i64 8, !18, i64 12, !13, i64 16, !13, i64 18}
!26 = !{!25, !18, i64 12}
!27 = !{!25, !6, i64 0}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = !{!25, !13, i64 16}
!32 = !{!25, !13, i64 18}
!33 = !{!34, !35, i64 40}
!34 = !{!"", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40}
!35 = !{!"long", !7, i64 0}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = !{!35, !35, i64 0}
!46 = distinct !{!46, !11}
