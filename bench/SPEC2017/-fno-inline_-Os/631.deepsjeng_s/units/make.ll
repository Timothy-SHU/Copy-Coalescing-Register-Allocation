; ModuleID = 'make.cpp'
source_filename = "make.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }

@Mask = external local_unnamed_addr global [64 x i64], align 16
@material = external local_unnamed_addr constant [14 x i32], align 16
@psq_table = external local_unnamed_addr global [12 x [64 x i8]], align 16
@zobrist = external local_unnamed_addr global [14 x [64 x i64]], align 16
@InvMask = external local_unnamed_addr global [64 x i64], align 16
@CastleMask = external local_unnamed_addr global [4 x i64], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = lshr i32 %1, 6
  %4 = and i32 %3, 63
  %5 = and i32 %1, 63
  %6 = lshr i32 %1, 12
  %7 = and i32 %6, 15
  %8 = lshr i32 %1, 19
  %9 = and i32 %8, 15
  %10 = lshr i32 %1, 16
  %11 = and i32 %10, 7
  %12 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !36
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %15 = load i32, ptr %14, align 8, !tbaa !42
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %16
  store i32 %13, ptr %17, align 8, !tbaa !43
  %18 = icmp eq i32 %13, 0
  br i1 %18, label %20, label %19, !prof !45

19:                                               ; preds = %2
  store i32 0, ptr %12, align 8, !tbaa !36
  br label %20

20:                                               ; preds = %19, %2
  %21 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 15
  %22 = load i32, ptr %21, align 4, !tbaa !46
  %23 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %16, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !47
  %24 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  %25 = load i32, ptr %24, align 4, !tbaa !48
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %16, i32 2
  store i32 %25, ptr %26, align 8, !tbaa !49
  %27 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !50
  %29 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %16, i32 3
  store i32 %28, ptr %29, align 4, !tbaa !51
  %30 = zext nneg i32 %4 to i64
  %31 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !52
  %33 = add nsw i32 %32, 1
  %34 = and i32 %33, -2
  %35 = icmp eq i32 %34, 2
  %36 = icmp ne i32 %9, 13
  %37 = or i1 %36, %35
  %38 = add nsw i32 %22, 1
  %39 = select i1 %37, i32 0, i32 %38, !prof !53
  store i32 %39, ptr %21, align 4, !tbaa !46
  %40 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %41 = load i64, ptr %40, align 8, !tbaa !54
  %42 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %16, i32 4
  store i64 %41, ptr %42, align 8, !tbaa !55
  %43 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 17
  %44 = load i64, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %16, i32 5
  store i64 %44, ptr %45, align 8, !tbaa !57
  %46 = zext nneg i32 %5 to i64
  %47 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !58
  %49 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %30
  %50 = load i64, ptr %49, align 8, !tbaa !58
  %51 = or i64 %50, %48
  %52 = and i32 %1, 8388608
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %90, !prof !59

54:                                               ; preds = %20
  br i1 %36, label %55, label %156, !prof !60

55:                                               ; preds = %54
  %56 = zext nneg i32 %9 to i64
  %57 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !58
  %59 = xor i64 %58, %48
  store i64 %59, ptr %57, align 8, !tbaa !58
  %60 = add nuw nsw i32 %8, 1
  %61 = and i32 %1, 524288
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %64 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %65 = select i1 %62, ptr %63, ptr %64, !prof !61
  %66 = load i64, ptr %65, align 8, !tbaa !58
  %67 = xor i64 %66, %48
  store i64 %67, ptr %65, align 8, !tbaa !58
  %68 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %56
  %69 = load i32, ptr %68, align 4, !tbaa !52
  %70 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %71 = load i32, ptr %70, align 8, !tbaa !62
  %72 = sub nsw i32 %71, %69
  store i32 %72, ptr %70, align 8, !tbaa !62
  %73 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 %56
  %74 = load i32, ptr %73, align 4, !tbaa !52
  %75 = add nsw i32 %74, -1
  store i32 %75, ptr %73, align 4, !tbaa !52
  %76 = add nsw i32 %9, -1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 %77, i64 %46
  %79 = load i8, ptr %78, align 1, !tbaa !63
  %80 = sext i8 %79 to i32
  %81 = sub nsw i32 %28, %80
  store i32 %81, ptr %27, align 4, !tbaa !50
  %82 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %56, i64 %46
  %83 = load i64, ptr %82, align 8, !tbaa !58
  %84 = xor i64 %83, %41
  store i64 %84, ptr %40, align 8, !tbaa !54
  %85 = and i32 %60, 30
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %156, !prof !64

87:                                               ; preds = %55
  %88 = load i64, ptr %82, align 8, !tbaa !58
  %89 = xor i64 %88, %44
  store i64 %89, ptr %43, align 8, !tbaa !56
  br label %156

90:                                               ; preds = %20
  %91 = icmp eq i32 %32, 2
  br i1 %91, label %92, label %116, !prof !65

92:                                               ; preds = %90
  %93 = add nsw i32 %5, -8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [64 x i64], ptr @InvMask, i64 0, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !58
  %97 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %98 = load i64, ptr %97, align 8, !tbaa !66
  %99 = and i64 %98, %96
  store i64 %99, ptr %97, align 8, !tbaa !66
  %100 = load i64, ptr %95, align 8, !tbaa !58
  %101 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %102 = load i64, ptr %101, align 8, !tbaa !58
  %103 = and i64 %102, %100
  store i64 %103, ptr %101, align 8, !tbaa !58
  %104 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 1, i64 %94
  %105 = load i64, ptr %104, align 8, !tbaa !58
  %106 = xor i64 %105, %41
  store i64 %106, ptr %40, align 8, !tbaa !54
  %107 = load i64, ptr %104, align 8, !tbaa !58
  %108 = xor i64 %107, %44
  store i64 %108, ptr %43, align 8, !tbaa !56
  %109 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @material, i64 0, i64 1), align 4, !tbaa !52
  %110 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %111 = load i32, ptr %110, align 8, !tbaa !62
  %112 = sub nsw i32 %111, %109
  store i32 %112, ptr %110, align 8, !tbaa !62
  %113 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %114 = load i32, ptr %113, align 4, !tbaa !52
  %115 = add nsw i32 %114, -1
  store i32 %115, ptr %113, align 4, !tbaa !52
  br label %141

116:                                              ; preds = %90
  %117 = add nuw nsw i32 %5, 8
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds [64 x i64], ptr @InvMask, i64 0, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !58
  %121 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %122 = load i64, ptr %121, align 8, !tbaa !67
  %123 = and i64 %122, %120
  store i64 %123, ptr %121, align 8, !tbaa !67
  %124 = load i64, ptr %119, align 8, !tbaa !58
  %125 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %126 = load i64, ptr %125, align 8, !tbaa !58
  %127 = and i64 %126, %124
  store i64 %127, ptr %125, align 8, !tbaa !58
  %128 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 2, i64 %118
  %129 = load i64, ptr %128, align 8, !tbaa !58
  %130 = xor i64 %129, %41
  store i64 %130, ptr %40, align 8, !tbaa !54
  %131 = load i64, ptr %128, align 8, !tbaa !58
  %132 = xor i64 %131, %44
  store i64 %132, ptr %43, align 8, !tbaa !56
  %133 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @material, i64 0, i64 2), align 8, !tbaa !52
  %134 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %135 = load i32, ptr %134, align 8, !tbaa !62
  %136 = sub nsw i32 %135, %133
  store i32 %136, ptr %134, align 8, !tbaa !62
  %137 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %138 = load i32, ptr %137, align 8, !tbaa !52
  %139 = add nsw i32 %138, -1
  store i32 %139, ptr %137, align 8, !tbaa !52
  %140 = zext nneg i32 %117 to i64
  br label %141

141:                                              ; preds = %116, %92
  %142 = phi i64 [ %130, %116 ], [ %106, %92 ]
  %143 = phi i64 [ %132, %116 ], [ %108, %92 ]
  %144 = phi i64 [ %140, %116 ], [ %94, %92 ]
  %145 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !52
  %147 = add nsw i32 %146, -1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 %148, i64 %144
  %150 = load i8, ptr %149, align 1, !tbaa !63
  %151 = sext i8 %150 to i32
  %152 = sub nsw i32 %28, %151
  store i32 %152, ptr %27, align 4, !tbaa !50
  store i32 13, ptr %145, align 4, !tbaa !52
  %153 = load i32, ptr %31, align 4, !tbaa !52
  %154 = load i32, ptr %27, align 4, !tbaa !50
  %155 = add nsw i32 %153, 1
  br label %156

156:                                              ; preds = %54, %87, %55, %141
  %157 = phi i32 [ %33, %54 ], [ %33, %87 ], [ %33, %55 ], [ %155, %141 ]
  %158 = phi i64 [ %41, %54 ], [ %84, %87 ], [ %84, %55 ], [ %142, %141 ]
  %159 = phi i64 [ %44, %54 ], [ %89, %87 ], [ %44, %55 ], [ %143, %141 ]
  %160 = phi i32 [ %28, %54 ], [ %81, %87 ], [ %81, %55 ], [ %154, %141 ]
  %161 = phi i32 [ %32, %54 ], [ %32, %87 ], [ %32, %55 ], [ %153, %141 ]
  store i32 13, ptr %31, align 4, !tbaa !52
  %162 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %46
  store i32 %161, ptr %162, align 4, !tbaa !52
  %163 = add nsw i32 %161, -1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 %164, i64 %30
  %166 = load i8, ptr %165, align 1, !tbaa !63
  %167 = sext i8 %166 to i32
  %168 = sub nsw i32 %160, %167
  store i32 %168, ptr %27, align 4, !tbaa !50
  %169 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 %164, i64 %46
  %170 = load i8, ptr %169, align 1, !tbaa !63
  %171 = sext i8 %170 to i32
  %172 = add nsw i32 %168, %171
  store i32 %172, ptr %27, align 4, !tbaa !50
  %173 = and i32 %157, -2
  %174 = icmp eq i32 %173, 2
  %175 = sext i32 %161 to i64
  br i1 %174, label %176, label %180, !prof !68

176:                                              ; preds = %156
  %177 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %175, i64 %30
  %178 = load i64, ptr %177, align 8, !tbaa !58
  %179 = xor i64 %159, %178
  store i64 %179, ptr %43, align 8, !tbaa !56
  br label %180

180:                                              ; preds = %156, %176
  %181 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %175, i64 %30
  %182 = load i64, ptr %181, align 8, !tbaa !58
  %183 = xor i64 %158, %182
  store i64 %183, ptr %40, align 8, !tbaa !54
  %184 = icmp eq i32 %11, 0
  br i1 %184, label %185, label %196, !prof !69

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %175
  %187 = load i64, ptr %186, align 8, !tbaa !58
  %188 = xor i64 %187, %51
  store i64 %188, ptr %186, align 8, !tbaa !58
  %189 = and i32 %161, 1
  %190 = icmp eq i32 %189, 0
  %191 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %192 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %193 = select i1 %190, ptr %192, ptr %191, !prof !70
  %194 = load i64, ptr %193, align 8, !tbaa !58
  %195 = xor i64 %194, %51
  store i64 %195, ptr %193, align 8, !tbaa !58
  br label %196

196:                                              ; preds = %185, %180
  %197 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %198 = load i32, ptr %197, align 4, !tbaa !71
  %199 = xor i32 %198, 1
  store i32 %199, ptr %197, align 4, !tbaa !71
  %200 = load i32, ptr %14, align 8, !tbaa !42
  %201 = add nsw i32 %200, 1
  store i32 %201, ptr %14, align 8, !tbaa !42
  switch i32 %161, label %294 [
    i32 1, label %202
    i32 2, label %248
  ], !prof !72

202:                                              ; preds = %196
  %203 = icmp eq i32 %7, 0
  br i1 %203, label %237, label %204, !prof !73

204:                                              ; preds = %202
  store i32 %7, ptr %162, align 4, !tbaa !52
  %205 = getelementptr inbounds [64 x i8], ptr @psq_table, i64 0, i64 %46
  %206 = load i8, ptr %205, align 1, !tbaa !63
  %207 = sext i8 %206 to i32
  %208 = sub nsw i32 %172, %207
  store i32 %208, ptr %27, align 4, !tbaa !50
  %209 = add nsw i32 %7, -1
  %210 = zext nneg i32 %209 to i64
  %211 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 %210, i64 %46
  %212 = load i8, ptr %211, align 1, !tbaa !63
  %213 = sext i8 %212 to i32
  %214 = add nsw i32 %208, %213
  store i32 %214, ptr %27, align 4, !tbaa !50
  %215 = zext nneg i32 %7 to i64
  %216 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %215, i64 %46
  %217 = load i64, ptr %216, align 8, !tbaa !58
  %218 = load i64, ptr %40, align 8, !tbaa !54
  %219 = xor i64 %218, %217
  store i64 %219, ptr %40, align 8, !tbaa !54
  %220 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %221 = load i32, ptr %220, align 4, !tbaa !52
  %222 = add nsw i32 %221, -1
  store i32 %222, ptr %220, align 4, !tbaa !52
  %223 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 %215
  %224 = load i32, ptr %223, align 4, !tbaa !52
  %225 = add nsw i32 %224, 1
  store i32 %225, ptr %223, align 4, !tbaa !52
  %226 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @material, i64 0, i64 1), align 4, !tbaa !52
  %227 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %228 = load i32, ptr %227, align 8, !tbaa !62
  %229 = sub nsw i32 %228, %226
  %230 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %215
  %231 = load i32, ptr %230, align 4, !tbaa !52
  %232 = add nsw i32 %231, %229
  store i32 %232, ptr %227, align 8, !tbaa !62
  %233 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %215
  %234 = load i64, ptr %233, align 8, !tbaa !58
  %235 = or i64 %234, %48
  store i64 %235, ptr %233, align 8, !tbaa !58
  %236 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  br label %425

237:                                              ; preds = %202
  %238 = add nsw i32 %4, -16
  %239 = icmp eq i32 %5, %238
  br i1 %239, label %240, label %242, !prof !74

240:                                              ; preds = %237
  %241 = add nsw i32 %4, -8
  store i32 %241, ptr %12, align 8, !tbaa !36
  br label %242

242:                                              ; preds = %240, %237
  %243 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 1, i64 %46
  %244 = load i64, ptr %243, align 8, !tbaa !58
  %245 = load i64, ptr %40, align 8, !tbaa !54
  %246 = xor i64 %245, %244
  store i64 %246, ptr %40, align 8, !tbaa !54
  %247 = load i64, ptr %243, align 8, !tbaa !58
  br label %425

248:                                              ; preds = %196
  %249 = icmp eq i32 %7, 0
  br i1 %249, label %283, label %250, !prof !75

250:                                              ; preds = %248
  store i32 %7, ptr %162, align 4, !tbaa !52
  %251 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 1, i64 %46
  %252 = load i8, ptr %251, align 1, !tbaa !63
  %253 = sext i8 %252 to i32
  %254 = sub nsw i32 %172, %253
  store i32 %254, ptr %27, align 4, !tbaa !50
  %255 = add nsw i32 %7, -1
  %256 = zext nneg i32 %255 to i64
  %257 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 %256, i64 %46
  %258 = load i8, ptr %257, align 1, !tbaa !63
  %259 = sext i8 %258 to i32
  %260 = add nsw i32 %254, %259
  store i32 %260, ptr %27, align 4, !tbaa !50
  %261 = zext nneg i32 %7 to i64
  %262 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %261, i64 %46
  %263 = load i64, ptr %262, align 8, !tbaa !58
  %264 = load i64, ptr %40, align 8, !tbaa !54
  %265 = xor i64 %264, %263
  store i64 %265, ptr %40, align 8, !tbaa !54
  %266 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 %261
  %267 = load i32, ptr %266, align 4, !tbaa !52
  %268 = add nsw i32 %267, 1
  store i32 %268, ptr %266, align 4, !tbaa !52
  %269 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %270 = load i32, ptr %269, align 8, !tbaa !52
  %271 = add nsw i32 %270, -1
  store i32 %271, ptr %269, align 8, !tbaa !52
  %272 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @material, i64 0, i64 2), align 8, !tbaa !52
  %273 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %274 = load i32, ptr %273, align 8, !tbaa !62
  %275 = sub nsw i32 %274, %272
  %276 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %261
  %277 = load i32, ptr %276, align 4, !tbaa !52
  %278 = add nsw i32 %277, %275
  store i32 %278, ptr %273, align 8, !tbaa !62
  %279 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %261
  %280 = load i64, ptr %279, align 8, !tbaa !58
  %281 = or i64 %280, %48
  store i64 %281, ptr %279, align 8, !tbaa !58
  %282 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  br label %425

283:                                              ; preds = %248
  %284 = add nuw nsw i32 %4, 16
  %285 = icmp eq i32 %5, %284
  br i1 %285, label %286, label %288, !prof !76

286:                                              ; preds = %283
  %287 = add nuw nsw i32 %4, 8
  store i32 %287, ptr %12, align 8, !tbaa !36
  br label %288

288:                                              ; preds = %286, %283
  %289 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 2, i64 %46
  %290 = load i64, ptr %289, align 8, !tbaa !58
  %291 = load i64, ptr %40, align 8, !tbaa !54
  %292 = xor i64 %291, %290
  store i64 %292, ptr %40, align 8, !tbaa !54
  %293 = load i64, ptr %289, align 8, !tbaa !58
  br label %425

294:                                              ; preds = %196
  %295 = add i32 %161, -7
  %296 = icmp ult i32 %295, -2
  br i1 %296, label %297, label %300, !prof !77

297:                                              ; preds = %294
  %298 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %175, i64 %46
  %299 = load i64, ptr %298, align 8, !tbaa !58
  br label %425

300:                                              ; preds = %294
  %301 = icmp eq i32 %161, 5
  %302 = load i64, ptr %40, align 8, !tbaa !54
  br i1 %301, label %303, label %364, !prof !78

303:                                              ; preds = %300
  %304 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 5, i64 %46
  %305 = load i64, ptr %304, align 8, !tbaa !58
  %306 = xor i64 %302, %305
  store i64 %306, ptr %40, align 8, !tbaa !54
  %307 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  store i32 %5, ptr %307, align 8, !tbaa !79
  %308 = load i32, ptr %24, align 4, !tbaa !48
  %309 = and i32 %308, -7
  store i32 %309, ptr %24, align 4, !tbaa !48
  br i1 %184, label %430, label %310, !prof !80

310:                                              ; preds = %303
  %311 = icmp eq i32 %11, 1
  %312 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 33
  %313 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 32
  %314 = select i1 %311, i32 61, i32 59, !prof !81
  %315 = select i1 %311, ptr %312, ptr %313, !prof !81
  %316 = load i32, ptr %315, align 4, !tbaa !52
  %317 = zext nneg i32 %314 to i64
  %318 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %317
  store i32 7, ptr %318, align 4, !tbaa !52
  %319 = icmp eq i32 %316, %314
  %320 = icmp eq i32 %316, %5
  %321 = or i1 %319, %320
  br i1 %321, label %322, label %324, !prof !82

322:                                              ; preds = %310
  %323 = zext nneg i32 %316 to i64
  br label %329

324:                                              ; preds = %310
  %325 = sext i32 %316 to i64
  %326 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %325
  store i32 13, ptr %326, align 4, !tbaa !52
  %327 = load i32, ptr %27, align 4, !tbaa !50
  %328 = load i32, ptr %307, align 8, !tbaa !79
  br label %329

329:                                              ; preds = %322, %324
  %330 = phi i64 [ %323, %322 ], [ %325, %324 ]
  %331 = phi i32 [ %5, %322 ], [ %328, %324 ]
  %332 = phi i32 [ %172, %322 ], [ %327, %324 ]
  %333 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 6, i64 %330
  %334 = load i8, ptr %333, align 1, !tbaa !63
  %335 = sext i8 %334 to i32
  %336 = sub nsw i32 %332, %335
  store i32 %336, ptr %27, align 4, !tbaa !50
  %337 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 6, i64 %317
  %338 = load i8, ptr %337, align 1, !tbaa !63
  %339 = sext i8 %338 to i32
  %340 = add nsw i32 %336, %339
  store i32 %340, ptr %27, align 4, !tbaa !50
  %341 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 7, i64 %330
  %342 = load i64, ptr %341, align 8, !tbaa !58
  %343 = xor i64 %342, %306
  store i64 %343, ptr %40, align 8, !tbaa !54
  %344 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 7, i64 %317
  %345 = load i64, ptr %344, align 8, !tbaa !58
  %346 = xor i64 %345, %343
  store i64 %346, ptr %40, align 8, !tbaa !54
  %347 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %330
  %348 = load i64, ptr %347, align 8, !tbaa !58
  %349 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %350 = load i64, ptr %349, align 8, !tbaa !58
  %351 = xor i64 %350, %348
  store i64 %351, ptr %349, align 8, !tbaa !58
  %352 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %317
  %353 = load i64, ptr %352, align 8, !tbaa !58
  %354 = xor i64 %353, %351
  store i64 %354, ptr %349, align 8, !tbaa !58
  %355 = sext i32 %331 to i64
  %356 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %355
  %357 = load i64, ptr %356, align 8, !tbaa !58
  %358 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  store i64 %357, ptr %358, align 8, !tbaa !58
  %359 = add nsw i32 %11, -1
  %360 = zext nneg i32 %359 to i64
  %361 = getelementptr inbounds [4 x i64], ptr @CastleMask, i64 0, i64 %360
  %362 = load i64, ptr %361, align 8, !tbaa !58
  %363 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  br label %425

364:                                              ; preds = %300
  %365 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 6, i64 %46
  %366 = load i64, ptr %365, align 8, !tbaa !58
  %367 = xor i64 %302, %366
  store i64 %367, ptr %40, align 8, !tbaa !54
  %368 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  store i32 %5, ptr %368, align 4, !tbaa !83
  %369 = load i32, ptr %24, align 4, !tbaa !48
  %370 = and i32 %369, -25
  store i32 %370, ptr %24, align 4, !tbaa !48
  br i1 %184, label %430, label %371, !prof !84

371:                                              ; preds = %364
  %372 = icmp eq i32 %11, 3
  %373 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 35
  %374 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 34
  %375 = select i1 %372, i32 5, i32 3, !prof !85
  %376 = select i1 %372, ptr %373, ptr %374, !prof !85
  %377 = load i32, ptr %376, align 4, !tbaa !52
  %378 = zext nneg i32 %375 to i64
  %379 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %378
  store i32 8, ptr %379, align 4, !tbaa !52
  %380 = icmp eq i32 %377, %375
  %381 = icmp eq i32 %377, %5
  %382 = or i1 %380, %381
  br i1 %382, label %383, label %385, !prof !86

383:                                              ; preds = %371
  %384 = zext nneg i32 %377 to i64
  br label %390

385:                                              ; preds = %371
  %386 = sext i32 %377 to i64
  %387 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %386
  store i32 13, ptr %387, align 4, !tbaa !52
  %388 = load i32, ptr %27, align 4, !tbaa !50
  %389 = load i32, ptr %368, align 4, !tbaa !83
  br label %390

390:                                              ; preds = %383, %385
  %391 = phi i64 [ %384, %383 ], [ %386, %385 ]
  %392 = phi i32 [ %5, %383 ], [ %389, %385 ]
  %393 = phi i32 [ %172, %383 ], [ %388, %385 ]
  %394 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 7, i64 %391
  %395 = load i8, ptr %394, align 1, !tbaa !63
  %396 = sext i8 %395 to i32
  %397 = sub nsw i32 %393, %396
  store i32 %397, ptr %27, align 4, !tbaa !50
  %398 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 7, i64 %378
  %399 = load i8, ptr %398, align 1, !tbaa !63
  %400 = sext i8 %399 to i32
  %401 = add nsw i32 %397, %400
  store i32 %401, ptr %27, align 4, !tbaa !50
  %402 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 8, i64 %391
  %403 = load i64, ptr %402, align 8, !tbaa !58
  %404 = xor i64 %403, %367
  store i64 %404, ptr %40, align 8, !tbaa !54
  %405 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 8, i64 %378
  %406 = load i64, ptr %405, align 8, !tbaa !58
  %407 = xor i64 %406, %404
  store i64 %407, ptr %40, align 8, !tbaa !54
  %408 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %391
  %409 = load i64, ptr %408, align 8, !tbaa !58
  %410 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %411 = load i64, ptr %410, align 8, !tbaa !58
  %412 = xor i64 %411, %409
  store i64 %412, ptr %410, align 8, !tbaa !58
  %413 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %378
  %414 = load i64, ptr %413, align 8, !tbaa !58
  %415 = xor i64 %414, %412
  store i64 %415, ptr %410, align 8, !tbaa !58
  %416 = sext i32 %392 to i64
  %417 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %416
  %418 = load i64, ptr %417, align 8, !tbaa !58
  %419 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  store i64 %418, ptr %419, align 8, !tbaa !58
  %420 = add nsw i32 %11, -1
  %421 = zext nneg i32 %420 to i64
  %422 = getelementptr inbounds [4 x i64], ptr @CastleMask, i64 0, i64 %421
  %423 = load i64, ptr %422, align 8, !tbaa !58
  %424 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  br label %425

425:                                              ; preds = %242, %204, %297, %390, %329, %250, %288
  %426 = phi ptr [ %43, %288 ], [ %282, %250 ], [ %363, %329 ], [ %424, %390 ], [ %40, %297 ], [ %236, %204 ], [ %43, %242 ]
  %427 = phi i64 [ %293, %288 ], [ %48, %250 ], [ %362, %329 ], [ %423, %390 ], [ %299, %297 ], [ %48, %204 ], [ %247, %242 ]
  %428 = load i64, ptr %426, align 8, !tbaa !58
  %429 = xor i64 %428, %427
  store i64 %429, ptr %426, align 8, !tbaa !58
  br label %430

430:                                              ; preds = %425, %303, %364
  %431 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 35
  %432 = load i32, ptr %431, align 8, !tbaa !87
  %433 = icmp eq i32 %4, %432
  %434 = icmp eq i32 %5, %432
  %435 = or i1 %433, %434
  br i1 %435, label %436, label %439, !prof !88

436:                                              ; preds = %430
  %437 = load i32, ptr %24, align 4, !tbaa !48
  %438 = and i32 %437, -9
  store i32 %438, ptr %24, align 4, !tbaa !48
  br label %439

439:                                              ; preds = %430, %436
  %440 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 34
  %441 = load i32, ptr %440, align 4, !tbaa !89
  %442 = icmp eq i32 %4, %441
  %443 = icmp eq i32 %5, %441
  %444 = or i1 %442, %443
  br i1 %444, label %445, label %448, !prof !90

445:                                              ; preds = %439
  %446 = load i32, ptr %24, align 4, !tbaa !48
  %447 = and i32 %446, -17
  store i32 %447, ptr %24, align 4, !tbaa !48
  br label %448

448:                                              ; preds = %439, %445
  %449 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 33
  %450 = load i32, ptr %449, align 8, !tbaa !91
  %451 = icmp eq i32 %4, %450
  %452 = icmp eq i32 %5, %450
  %453 = or i1 %451, %452
  br i1 %453, label %454, label %457, !prof !92

454:                                              ; preds = %448
  %455 = load i32, ptr %24, align 4, !tbaa !48
  %456 = and i32 %455, -3
  store i32 %456, ptr %24, align 4, !tbaa !48
  br label %457

457:                                              ; preds = %448, %454
  %458 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 32
  %459 = load i32, ptr %458, align 4, !tbaa !93
  %460 = icmp eq i32 %4, %459
  %461 = icmp eq i32 %5, %459
  %462 = or i1 %460, %461
  br i1 %462, label %463, label %466, !prof !94

463:                                              ; preds = %457
  %464 = load i32, ptr %24, align 4, !tbaa !48
  %465 = and i32 %464, -5
  store i32 %465, ptr %24, align 4, !tbaa !48
  br label %466

466:                                              ; preds = %457, %463
  %467 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %468 = load i64, ptr %467, align 8, !tbaa !66
  %469 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %470 = load i64, ptr %469, align 8, !tbaa !67
  %471 = or i64 %470, %468
  %472 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  store i64 %471, ptr %472, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = lshr i32 %1, 6
  %4 = and i32 %3, 63
  %5 = and i32 %1, 63
  %6 = lshr i32 %1, 12
  %7 = and i32 %6, 15
  %8 = lshr i32 %1, 19
  %9 = and i32 %8, 15
  %10 = lshr i32 %1, 16
  %11 = and i32 %10, 7
  %12 = zext nneg i32 %5 to i64
  %13 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !58
  %15 = zext nneg i32 %4 to i64
  %16 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !58
  %18 = or i64 %17, %14
  %19 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %20 = load i32, ptr %19, align 4, !tbaa !71
  %21 = xor i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !71
  %22 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %23 = load i32, ptr %22, align 8, !tbaa !42
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %22, align 8, !tbaa !42
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %25
  %27 = load i32, ptr %26, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  store i32 %27, ptr %28, align 8, !tbaa !36
  %29 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %25, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !47
  %31 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 15
  store i32 %30, ptr %31, align 4, !tbaa !46
  %32 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %25, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !49
  %34 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  store i32 %33, ptr %34, align 4, !tbaa !48
  %35 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %25, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !51
  %37 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 7
  store i32 %36, ptr %37, align 4, !tbaa !50
  %38 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %25, i32 4
  %39 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %40 = load <2 x i64>, ptr %38, align 8, !tbaa !58
  store <2 x i64> %40, ptr %39, align 8, !tbaa !58
  %41 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %12
  %42 = load i32, ptr %41, align 4, !tbaa !52
  %43 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %15
  store i32 %42, ptr %43, align 4, !tbaa !52
  %44 = and i32 %1, 8388608
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %71, !prof !59

46:                                               ; preds = %2
  %47 = icmp eq i32 %4, %5
  br i1 %47, label %49, label %48, !prof !96

48:                                               ; preds = %46
  store i32 %9, ptr %41, align 4, !tbaa !52
  br label %49

49:                                               ; preds = %48, %46
  %50 = icmp eq i32 %9, 13
  br i1 %50, label %112, label %51, !prof !97

51:                                               ; preds = %49
  %52 = zext nneg i32 %9 to i64
  %53 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !52
  %55 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %56 = load i32, ptr %55, align 8, !tbaa !62
  %57 = add nsw i32 %56, %54
  store i32 %57, ptr %55, align 8, !tbaa !62
  %58 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %52
  %59 = load i64, ptr %58, align 8, !tbaa !58
  %60 = xor i64 %59, %14
  store i64 %60, ptr %58, align 8, !tbaa !58
  %61 = and i32 %42, 1
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %64 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %65 = select i1 %62, ptr %63, ptr %64, !prof !98
  %66 = load i64, ptr %65, align 8, !tbaa !58
  %67 = xor i64 %66, %14
  store i64 %67, ptr %65, align 8, !tbaa !58
  %68 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 %52
  %69 = load i32, ptr %68, align 4, !tbaa !52
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %68, align 4, !tbaa !52
  br label %112

71:                                               ; preds = %2
  store i32 13, ptr %41, align 4, !tbaa !52
  %72 = icmp eq i32 %42, 1
  %73 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  br i1 %72, label %74, label %93, !prof !99

74:                                               ; preds = %71
  %75 = add nuw nsw i32 %5, 8
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %76
  %78 = load i64, ptr %77, align 8, !tbaa !58
  %79 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %80 = load i64, ptr %79, align 8, !tbaa !67
  %81 = or i64 %80, %78
  store i64 %81, ptr %79, align 8, !tbaa !67
  %82 = load i64, ptr %77, align 8, !tbaa !58
  %83 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %84 = load i64, ptr %83, align 8, !tbaa !58
  %85 = or i64 %84, %82
  store i64 %85, ptr %83, align 8, !tbaa !58
  %86 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @material, i64 0, i64 2), align 8, !tbaa !52
  %87 = load i32, ptr %73, align 8, !tbaa !62
  %88 = add nsw i32 %87, %86
  store i32 %88, ptr %73, align 8, !tbaa !62
  %89 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %90 = load i32, ptr %89, align 8, !tbaa !52
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %89, align 8, !tbaa !52
  %92 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %76
  store i32 2, ptr %92, align 4, !tbaa !52
  br label %112

93:                                               ; preds = %71
  %94 = add nsw i32 %5, -8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !58
  %98 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %99 = load i64, ptr %98, align 8, !tbaa !66
  %100 = or i64 %99, %97
  store i64 %100, ptr %98, align 8, !tbaa !66
  %101 = load i64, ptr %96, align 8, !tbaa !58
  %102 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %103 = load i64, ptr %102, align 8, !tbaa !58
  %104 = or i64 %103, %101
  store i64 %104, ptr %102, align 8, !tbaa !58
  %105 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @material, i64 0, i64 1), align 4, !tbaa !52
  %106 = load i32, ptr %73, align 8, !tbaa !62
  %107 = add nsw i32 %106, %105
  store i32 %107, ptr %73, align 8, !tbaa !62
  %108 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %109 = load i32, ptr %108, align 4, !tbaa !52
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %108, align 4, !tbaa !52
  %111 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %95
  store i32 1, ptr %111, align 4, !tbaa !52
  br label %112

112:                                              ; preds = %74, %93, %49, %51
  %113 = icmp eq i32 %11, 0
  br i1 %113, label %114, label %126, !prof !69

114:                                              ; preds = %112
  %115 = sext i32 %42 to i64
  %116 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %115
  %117 = load i64, ptr %116, align 8, !tbaa !58
  %118 = xor i64 %117, %18
  store i64 %118, ptr %116, align 8, !tbaa !58
  %119 = and i32 %42, 1
  %120 = icmp eq i32 %119, 0
  %121 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %122 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %123 = select i1 %120, ptr %122, ptr %121, !prof !70
  %124 = load i64, ptr %123, align 8, !tbaa !58
  %125 = xor i64 %124, %18
  store i64 %125, ptr %123, align 8, !tbaa !58
  br label %126

126:                                              ; preds = %114, %112
  %127 = icmp eq i32 %7, 0
  br i1 %127, label %166, label %128, !prof !100

128:                                              ; preds = %126
  %129 = and i32 %42, 1
  %130 = icmp eq i32 %129, 0
  %131 = zext nneg i32 %7 to i64
  %132 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 %131
  %133 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %131
  %134 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %135 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %131
  br i1 %130, label %151, label %136, !prof !101

136:                                              ; preds = %128
  store i32 1, ptr %43, align 4, !tbaa !52
  %137 = load i32, ptr %132, align 4, !tbaa !52
  %138 = add nsw i32 %137, -1
  store i32 %138, ptr %132, align 4, !tbaa !52
  %139 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %140 = load i32, ptr %139, align 4, !tbaa !52
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr %139, align 4, !tbaa !52
  %142 = load i32, ptr %133, align 4, !tbaa !52
  %143 = load i32, ptr %134, align 8, !tbaa !62
  %144 = sub nsw i32 %143, %142
  %145 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @material, i64 0, i64 1), align 4, !tbaa !52
  %146 = add nsw i32 %145, %144
  store i32 %146, ptr %134, align 8, !tbaa !62
  %147 = load i64, ptr %16, align 8, !tbaa !58
  %148 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %149 = load i64, ptr %148, align 8, !tbaa !58
  %150 = or i64 %149, %147
  store i64 %150, ptr %148, align 8, !tbaa !58
  br label %239

151:                                              ; preds = %128
  store i32 2, ptr %43, align 4, !tbaa !52
  %152 = load i32, ptr %132, align 4, !tbaa !52
  %153 = add nsw i32 %152, -1
  store i32 %153, ptr %132, align 4, !tbaa !52
  %154 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %155 = load i32, ptr %154, align 8, !tbaa !52
  %156 = add nsw i32 %155, 1
  store i32 %156, ptr %154, align 8, !tbaa !52
  %157 = load i32, ptr %133, align 4, !tbaa !52
  %158 = load i32, ptr %134, align 8, !tbaa !62
  %159 = sub nsw i32 %158, %157
  %160 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @material, i64 0, i64 2), align 8, !tbaa !52
  %161 = add nsw i32 %160, %159
  store i32 %161, ptr %134, align 8, !tbaa !62
  %162 = load i64, ptr %16, align 8, !tbaa !58
  %163 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %164 = load i64, ptr %163, align 8, !tbaa !58
  %165 = or i64 %164, %162
  store i64 %165, ptr %163, align 8, !tbaa !58
  br label %239

166:                                              ; preds = %126
  switch i32 %42, label %245 [
    i32 5, label %167
    i32 6, label %203
  ], !prof !102

167:                                              ; preds = %166
  %168 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  store i32 %4, ptr %168, align 8, !tbaa !79
  %169 = load i64, ptr %16, align 8, !tbaa !58
  %170 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  store i64 %169, ptr %170, align 8, !tbaa !58
  br i1 %113, label %245, label %171, !prof !80

171:                                              ; preds = %167
  %172 = icmp eq i32 %11, 1
  %173 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 33
  %174 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 32
  %175 = select i1 %172, ptr %173, ptr %174, !prof !81
  %176 = select i1 %172, i32 61, i32 59, !prof !81
  %177 = load i32, ptr %175, align 4, !tbaa !52
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %178
  store i32 7, ptr %179, align 4, !tbaa !52
  %180 = icmp eq i32 %176, %177
  %181 = icmp eq i32 %176, %4
  %182 = or i1 %181, %180
  %183 = zext nneg i32 %176 to i64
  br i1 %182, label %186, label %184, !prof !82

184:                                              ; preds = %171
  %185 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %183
  store i32 13, ptr %185, align 4, !tbaa !52
  br label %186

186:                                              ; preds = %171, %184
  %187 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %183
  %188 = load i64, ptr %187, align 8, !tbaa !58
  %189 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %190 = load i64, ptr %189, align 8, !tbaa !58
  %191 = xor i64 %190, %188
  store i64 %191, ptr %189, align 8, !tbaa !58
  %192 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %178
  %193 = load i64, ptr %192, align 8, !tbaa !58
  %194 = xor i64 %193, %191
  store i64 %194, ptr %189, align 8, !tbaa !58
  %195 = load i32, ptr %168, align 8, !tbaa !79
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %196
  %198 = load i64, ptr %197, align 8, !tbaa !58
  store i64 %198, ptr %170, align 8, !tbaa !58
  %199 = add nsw i32 %11, -1
  %200 = zext nneg i32 %199 to i64
  %201 = getelementptr inbounds [4 x i64], ptr @CastleMask, i64 0, i64 %200
  %202 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  br label %239

203:                                              ; preds = %166
  %204 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  store i32 %4, ptr %204, align 4, !tbaa !83
  %205 = load i64, ptr %16, align 8, !tbaa !58
  %206 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  store i64 %205, ptr %206, align 8, !tbaa !58
  br i1 %113, label %245, label %207, !prof !84

207:                                              ; preds = %203
  %208 = icmp eq i32 %11, 3
  %209 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 35
  %210 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 34
  %211 = select i1 %208, ptr %209, ptr %210, !prof !85
  %212 = select i1 %208, i32 5, i32 3, !prof !85
  %213 = load i32, ptr %211, align 4, !tbaa !52
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %214
  store i32 8, ptr %215, align 4, !tbaa !52
  %216 = icmp eq i32 %212, %213
  %217 = icmp eq i32 %212, %4
  %218 = or i1 %217, %216
  %219 = zext nneg i32 %212 to i64
  br i1 %218, label %222, label %220, !prof !86

220:                                              ; preds = %207
  %221 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %219
  store i32 13, ptr %221, align 4, !tbaa !52
  br label %222

222:                                              ; preds = %207, %220
  %223 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %219
  %224 = load i64, ptr %223, align 8, !tbaa !58
  %225 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %226 = load i64, ptr %225, align 8, !tbaa !58
  %227 = xor i64 %226, %224
  store i64 %227, ptr %225, align 8, !tbaa !58
  %228 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %214
  %229 = load i64, ptr %228, align 8, !tbaa !58
  %230 = xor i64 %229, %227
  store i64 %230, ptr %225, align 8, !tbaa !58
  %231 = load i32, ptr %204, align 4, !tbaa !83
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %232
  %234 = load i64, ptr %233, align 8, !tbaa !58
  store i64 %234, ptr %206, align 8, !tbaa !58
  %235 = add nsw i32 %11, -1
  %236 = zext nneg i32 %235 to i64
  %237 = getelementptr inbounds [4 x i64], ptr @CastleMask, i64 0, i64 %236
  %238 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  br label %239

239:                                              ; preds = %151, %136, %222, %186
  %240 = phi ptr [ %202, %186 ], [ %238, %222 ], [ %135, %136 ], [ %135, %151 ]
  %241 = phi ptr [ %201, %186 ], [ %237, %222 ], [ %16, %136 ], [ %16, %151 ]
  %242 = load i64, ptr %241, align 8, !tbaa !58
  %243 = load i64, ptr %240, align 8, !tbaa !58
  %244 = xor i64 %243, %242
  store i64 %244, ptr %240, align 8, !tbaa !58
  br label %245

245:                                              ; preds = %239, %166, %167, %203
  %246 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %247 = load i64, ptr %246, align 8, !tbaa !66
  %248 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %249 = load i64, ptr %248, align 8, !tbaa !67
  %250 = or i64 %249, %247
  %251 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  store i64 %250, ptr %251, align 8, !tbaa !95
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 146496756232}
!4 = !{!"MaxCount", i64 8721648212}
!5 = !{!"MaxInternalCount", i64 5141736311}
!6 = !{!"MaxFunctionCount", i64 8721648212}
!7 = !{!"NumCounts", i64 1321}
!8 = !{!"NumFunctions", i64 93}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 8721648212, i32 1}
!14 = !{i32 100000, i64 6254650610, i32 2}
!15 = !{i32 200000, i64 3869890121, i32 6}
!16 = !{i32 300000, i64 2709579086, i32 11}
!17 = !{i32 400000, i64 2122664977, i32 16}
!18 = !{i32 500000, i64 1035201207, i32 30}
!19 = !{i32 600000, i64 738030122, i32 46}
!20 = !{i32 700000, i64 447394011, i32 71}
!21 = !{i32 800000, i64 240014260, i32 118}
!22 = !{i32 900000, i64 123608408, i32 197}
!23 = !{i32 950000, i64 77992234, i32 270}
!24 = !{i32 990000, i64 24047101, i32 388}
!25 = !{i32 999000, i64 3805030, i32 501}
!26 = !{i32 999900, i64 637179, i32 578}
!27 = !{i32 999990, i64 66341, i32 629}
!28 = !{i32 999999, i64 5762, i32 686}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 1063462853}
!36 = !{!37, !38, i64 456}
!37 = !{!"_ZTS7state_t", !38, i64 0, !39, i64 4, !41, i64 264, !41, i64 272, !41, i64 280, !39, i64 288, !38, i64 392, !38, i64 396, !39, i64 400, !38, i64 452, !38, i64 456, !38, i64 460, !38, i64 464, !38, i64 468, !38, i64 472, !38, i64 476, !41, i64 480, !41, i64 488, !39, i64 496, !39, i64 2544, !39, i64 2800, !39, i64 3056, !41, i64 4080, !41, i64 4088, !38, i64 4096, !39, i64 4100, !38, i64 4356, !38, i64 4360, !38, i64 4364, !38, i64 4368, !38, i64 4372, !38, i64 4376, !38, i64 4380, !38, i64 4384, !38, i64 4388, !38, i64 4392, !39, i64 4400}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!"long long", !39, i64 0}
!42 = !{!37, !38, i64 472}
!43 = !{!44, !38, i64 0}
!44 = !{!"_ZTS6move_x", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !41, i64 16, !41, i64 24}
!45 = !{!"branch_weights", i32 1055420996, i32 8041859}
!46 = !{!37, !38, i64 476}
!47 = !{!44, !38, i64 4}
!48 = !{!37, !38, i64 452}
!49 = !{!44, !38, i64 8}
!50 = !{!37, !38, i64 396}
!51 = !{!44, !38, i64 12}
!52 = !{!38, !38, i64 0}
!53 = !{!"branch_weights", i32 1490488240, i32 -2146771104}
!54 = !{!37, !41, i64 480}
!55 = !{!44, !41, i64 16}
!56 = !{!37, !41, i64 488}
!57 = !{!44, !41, i64 24}
!58 = !{!41, !41, i64 0}
!59 = !{!"branch_weights", i32 1063424038, i32 38817}
!60 = !{!"branch_weights", i32 336549908, i32 726874131}
!61 = !{!"branch_weights", i32 150289548, i32 186260361}
!62 = !{!37, !38, i64 392}
!63 = !{!39, !39, i64 0}
!64 = !{!"branch_weights", i32 124068940, i32 212480969}
!65 = !{!"branch_weights", i32 5763, i32 33055}
!66 = !{!37, !41, i64 280}
!67 = !{!37, !41, i64 272}
!68 = !{!"branch_weights", i32 144999263, i32 918463592}
!69 = !{!"branch_weights", i32 1062221151, i32 1241704}
!70 = !{!"branch_weights", i32 554647759, i32 507573393}
!71 = !{!37, !38, i64 460}
!72 = !{!"branch_weights", i32 -901239171, i32 264534094, i32 271238999}
!73 = !{!"branch_weights", i32 70206804, i32 1385536}
!74 = !{!"branch_weights", i32 18026470, i32 52180335}
!75 = !{!"branch_weights", i32 72188702, i32 1218224}
!76 = !{!"branch_weights", i32 12927229, i32 59261474}
!77 = !{!"branch_weights", i32 -190993008, i32 1541350620}
!78 = !{!"branch_weights", i32 93496019, i32 157273326}
!79 = !{!37, !38, i64 464}
!80 = !{!"branch_weights", i32 93195774, i32 300246}
!81 = !{!"branch_weights", i32 145103, i32 155144}
!82 = !{!"branch_weights", i32 18765, i32 -1477852905}
!83 = !{!37, !38, i64 468}
!84 = !{!"branch_weights", i32 156331868, i32 941459}
!85 = !{!"branch_weights", i32 764067, i32 177393}
!86 = !{!"branch_weights", i32 7355, i32 -832681950}
!87 = !{!37, !38, i64 4392}
!88 = !{!"branch_weights", i32 168071515, i32 -341605488}
!89 = !{!37, !38, i64 4388}
!90 = !{!"branch_weights", i32 121845119, i32 -300059855}
!91 = !{!37, !38, i64 4384}
!92 = !{!"branch_weights", i32 85529674, i32 -194682476}
!93 = !{!37, !38, i64 4380}
!94 = !{!"branch_weights", i32 96219830, i32 -242661248}
!95 = !{!37, !41, i64 264}
!96 = !{!"branch_weights", i32 1, i32 1063424038}
!97 = !{!"branch_weights", i32 726874131, i32 336549908}
!98 = !{!"branch_weights", i32 186260361, i32 150289548}
!99 = !{!"branch_weights", i32 33055, i32 5763}
!100 = !{!"branch_weights", i32 1060859096, i32 2603759}
!101 = !{!"branch_weights", i32 1218224, i32 1385536}
!102 = !{!"branch_weights", i32 -1375640138, i32 336932379, i32 566767188}
