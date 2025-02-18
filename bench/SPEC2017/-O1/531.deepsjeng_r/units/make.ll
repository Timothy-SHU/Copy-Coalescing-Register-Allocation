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

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !34 {
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
  %13 = load i32, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %15 = load i32, ptr %14, align 8, !tbaa !41
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %16
  store i32 %13, ptr %17, align 8, !tbaa !42
  %18 = icmp eq i32 %13, 0
  br i1 %18, label %20, label %19, !prof !44

19:                                               ; preds = %2
  store i32 0, ptr %12, align 8, !tbaa !35
  br label %20

20:                                               ; preds = %19, %2
  %21 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 15
  %22 = load i32, ptr %21, align 4, !tbaa !45
  %23 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %16, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !46
  %24 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  %25 = load i32, ptr %24, align 4, !tbaa !47
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %16, i32 2
  store i32 %25, ptr %26, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !49
  %29 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %16, i32 3
  store i32 %28, ptr %29, align 4, !tbaa !50
  %30 = zext nneg i32 %4 to i64
  %31 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !51
  %33 = add nsw i32 %32, 1
  %34 = and i32 %33, -2
  %35 = icmp eq i32 %34, 2
  %36 = icmp ne i32 %9, 13
  %37 = or i1 %36, %35
  %38 = add nsw i32 %22, 1
  %39 = select i1 %37, i32 0, i32 %38, !prof !52
  store i32 %39, ptr %21, align 4, !tbaa !45
  %40 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %41 = load i64, ptr %40, align 8, !tbaa !53
  %42 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %16, i32 4
  store i64 %41, ptr %42, align 8, !tbaa !54
  %43 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 17
  %44 = load i64, ptr %43, align 8, !tbaa !55
  %45 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %16, i32 5
  store i64 %44, ptr %45, align 8, !tbaa !56
  %46 = zext nneg i32 %5 to i64
  %47 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !57
  %49 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %30
  %50 = load i64, ptr %49, align 8, !tbaa !57
  %51 = or i64 %50, %48
  %52 = and i32 %1, 8388608
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %90, !prof !58

54:                                               ; preds = %20
  br i1 %36, label %55, label %151, !prof !59

55:                                               ; preds = %54
  %56 = zext nneg i32 %9 to i64
  %57 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !57
  %59 = xor i64 %58, %48
  store i64 %59, ptr %57, align 8, !tbaa !57
  %60 = add nuw nsw i32 %8, 1
  %61 = and i32 %1, 524288
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %64 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %65 = select i1 %62, ptr %63, ptr %64, !prof !60
  %66 = load i64, ptr %65, align 8, !tbaa !57
  %67 = xor i64 %66, %48
  store i64 %67, ptr %65, align 8, !tbaa !57
  %68 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %56
  %69 = load i32, ptr %68, align 4, !tbaa !51
  %70 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %71 = load i32, ptr %70, align 8, !tbaa !61
  %72 = sub nsw i32 %71, %69
  store i32 %72, ptr %70, align 8, !tbaa !61
  %73 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 %56
  %74 = load i32, ptr %73, align 4, !tbaa !51
  %75 = add nsw i32 %74, -1
  store i32 %75, ptr %73, align 4, !tbaa !51
  %76 = add nsw i32 %9, -1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 %77, i64 %46
  %79 = load i8, ptr %78, align 1, !tbaa !62
  %80 = sext i8 %79 to i32
  %81 = sub nsw i32 %28, %80
  store i32 %81, ptr %27, align 4, !tbaa !49
  %82 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %56, i64 %46
  %83 = load i64, ptr %82, align 8, !tbaa !57
  %84 = xor i64 %83, %41
  store i64 %84, ptr %40, align 8, !tbaa !53
  %85 = and i32 %60, 30
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %151, !prof !63

87:                                               ; preds = %55
  %88 = load i64, ptr %82, align 8, !tbaa !57
  %89 = xor i64 %88, %44
  store i64 %89, ptr %43, align 8, !tbaa !55
  br label %151

90:                                               ; preds = %20
  %91 = icmp eq i32 %32, 2
  br i1 %91, label %92, label %116, !prof !64

92:                                               ; preds = %90
  %93 = add nsw i32 %5, -8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [64 x i64], ptr @InvMask, i64 0, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !57
  %97 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %98 = load i64, ptr %97, align 8, !tbaa !65
  %99 = and i64 %98, %96
  store i64 %99, ptr %97, align 8, !tbaa !65
  %100 = load i64, ptr %95, align 8, !tbaa !57
  %101 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %102 = load i64, ptr %101, align 8, !tbaa !57
  %103 = and i64 %102, %100
  store i64 %103, ptr %101, align 8, !tbaa !57
  %104 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 1, i64 %94
  %105 = load i64, ptr %104, align 8, !tbaa !57
  %106 = xor i64 %105, %41
  store i64 %106, ptr %40, align 8, !tbaa !53
  %107 = load i64, ptr %104, align 8, !tbaa !57
  %108 = xor i64 %107, %44
  store i64 %108, ptr %43, align 8, !tbaa !55
  %109 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @material, i64 0, i64 1), align 4, !tbaa !51
  %110 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %111 = load i32, ptr %110, align 8, !tbaa !61
  %112 = sub nsw i32 %111, %109
  store i32 %112, ptr %110, align 8, !tbaa !61
  %113 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %114 = load i32, ptr %113, align 4, !tbaa !51
  %115 = add nsw i32 %114, -1
  store i32 %115, ptr %113, align 4, !tbaa !51
  br label %140

116:                                              ; preds = %90
  %117 = add nuw nsw i32 %5, 8
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds [64 x i64], ptr @InvMask, i64 0, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !57
  %121 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %122 = load i64, ptr %121, align 8, !tbaa !66
  %123 = and i64 %122, %120
  store i64 %123, ptr %121, align 8, !tbaa !66
  %124 = load i64, ptr %119, align 8, !tbaa !57
  %125 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %126 = load i64, ptr %125, align 8, !tbaa !57
  %127 = and i64 %126, %124
  store i64 %127, ptr %125, align 8, !tbaa !57
  %128 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 2, i64 %118
  %129 = load i64, ptr %128, align 8, !tbaa !57
  %130 = xor i64 %129, %41
  store i64 %130, ptr %40, align 8, !tbaa !53
  %131 = load i64, ptr %128, align 8, !tbaa !57
  %132 = xor i64 %131, %44
  store i64 %132, ptr %43, align 8, !tbaa !55
  %133 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @material, i64 0, i64 2), align 8, !tbaa !51
  %134 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %135 = load i32, ptr %134, align 8, !tbaa !61
  %136 = sub nsw i32 %135, %133
  store i32 %136, ptr %134, align 8, !tbaa !61
  %137 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %138 = load i32, ptr %137, align 8, !tbaa !51
  %139 = add nsw i32 %138, -1
  store i32 %139, ptr %137, align 8, !tbaa !51
  br label %140

140:                                              ; preds = %116, %92
  %141 = phi i32 [ %93, %92 ], [ %117, %116 ]
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !51
  %145 = add nsw i32 %144, -1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 %146, i64 %142
  %148 = load i8, ptr %147, align 1, !tbaa !62
  %149 = sext i8 %148 to i32
  %150 = sub nsw i32 %28, %149
  store i32 %150, ptr %27, align 4, !tbaa !49
  store i32 13, ptr %143, align 4, !tbaa !51
  br label %151

151:                                              ; preds = %54, %87, %55, %140
  %152 = load i32, ptr %31, align 4, !tbaa !51
  store i32 13, ptr %31, align 4, !tbaa !51
  %153 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %46
  store i32 %152, ptr %153, align 4, !tbaa !51
  %154 = add nsw i32 %152, -1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 %155, i64 %30
  %157 = load i8, ptr %156, align 1, !tbaa !62
  %158 = sext i8 %157 to i32
  %159 = load i32, ptr %27, align 4, !tbaa !49
  %160 = sub nsw i32 %159, %158
  store i32 %160, ptr %27, align 4, !tbaa !49
  %161 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 %155, i64 %46
  %162 = load i8, ptr %161, align 1, !tbaa !62
  %163 = sext i8 %162 to i32
  %164 = add nsw i32 %160, %163
  store i32 %164, ptr %27, align 4, !tbaa !49
  %165 = add nsw i32 %152, 1
  %166 = and i32 %165, -2
  %167 = icmp eq i32 %166, 2
  br i1 %167, label %168, label %174, !prof !67

168:                                              ; preds = %151
  %169 = sext i32 %152 to i64
  %170 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %169, i64 %30
  %171 = load i64, ptr %170, align 8, !tbaa !57
  %172 = load i64, ptr %43, align 8, !tbaa !55
  %173 = xor i64 %172, %171
  store i64 %173, ptr %43, align 8, !tbaa !55
  br label %174

174:                                              ; preds = %168, %151
  %175 = sext i32 %152 to i64
  %176 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %175, i64 %30
  %177 = load i64, ptr %176, align 8, !tbaa !57
  %178 = load i64, ptr %40, align 8, !tbaa !53
  %179 = xor i64 %178, %177
  store i64 %179, ptr %40, align 8, !tbaa !53
  %180 = icmp eq i32 %11, 0
  br i1 %180, label %181, label %192, !prof !68

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %175
  %183 = load i64, ptr %182, align 8, !tbaa !57
  %184 = xor i64 %183, %51
  store i64 %184, ptr %182, align 8, !tbaa !57
  %185 = and i32 %152, 1
  %186 = icmp eq i32 %185, 0
  %187 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %188 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %189 = select i1 %186, ptr %188, ptr %187, !prof !69
  %190 = load i64, ptr %189, align 8, !tbaa !57
  %191 = xor i64 %190, %51
  store i64 %191, ptr %189, align 8, !tbaa !57
  br label %192

192:                                              ; preds = %181, %174
  %193 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %194 = load i32, ptr %193, align 4, !tbaa !70
  %195 = xor i32 %194, 1
  store i32 %195, ptr %193, align 4, !tbaa !70
  %196 = load i32, ptr %14, align 8, !tbaa !41
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr %14, align 8, !tbaa !41
  switch i32 %152, label %290 [
    i32 1, label %198
    i32 2, label %244
  ], !prof !71

198:                                              ; preds = %192
  %199 = icmp eq i32 %7, 0
  br i1 %199, label %233, label %200, !prof !72

200:                                              ; preds = %198
  store i32 %7, ptr %153, align 4, !tbaa !51
  %201 = getelementptr inbounds [64 x i8], ptr @psq_table, i64 0, i64 %46
  %202 = load i8, ptr %201, align 1, !tbaa !62
  %203 = sext i8 %202 to i32
  %204 = sub nsw i32 %164, %203
  store i32 %204, ptr %27, align 4, !tbaa !49
  %205 = add nsw i32 %7, -1
  %206 = zext nneg i32 %205 to i64
  %207 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 %206, i64 %46
  %208 = load i8, ptr %207, align 1, !tbaa !62
  %209 = sext i8 %208 to i32
  %210 = add nsw i32 %204, %209
  store i32 %210, ptr %27, align 4, !tbaa !49
  %211 = zext nneg i32 %7 to i64
  %212 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %211, i64 %46
  %213 = load i64, ptr %212, align 8, !tbaa !57
  %214 = load i64, ptr %40, align 8, !tbaa !53
  %215 = xor i64 %214, %213
  store i64 %215, ptr %40, align 8, !tbaa !53
  %216 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %217 = load i32, ptr %216, align 4, !tbaa !51
  %218 = add nsw i32 %217, -1
  store i32 %218, ptr %216, align 4, !tbaa !51
  %219 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 %211
  %220 = load i32, ptr %219, align 4, !tbaa !51
  %221 = add nsw i32 %220, 1
  store i32 %221, ptr %219, align 4, !tbaa !51
  %222 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @material, i64 0, i64 1), align 4, !tbaa !51
  %223 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %224 = load i32, ptr %223, align 8, !tbaa !61
  %225 = sub nsw i32 %224, %222
  store i32 %225, ptr %223, align 8, !tbaa !61
  %226 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %211
  %227 = load i32, ptr %226, align 4, !tbaa !51
  %228 = add nsw i32 %227, %225
  store i32 %228, ptr %223, align 8, !tbaa !61
  %229 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %211
  %230 = load i64, ptr %229, align 8, !tbaa !57
  %231 = or i64 %230, %48
  store i64 %231, ptr %229, align 8, !tbaa !57
  %232 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  br label %413

233:                                              ; preds = %198
  %234 = add nsw i32 %4, -16
  %235 = icmp eq i32 %5, %234
  br i1 %235, label %236, label %238, !prof !73

236:                                              ; preds = %233
  %237 = add nsw i32 %4, -8
  store i32 %237, ptr %12, align 8, !tbaa !35
  br label %238

238:                                              ; preds = %236, %233
  %239 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 1, i64 %46
  %240 = load i64, ptr %239, align 8, !tbaa !57
  %241 = load i64, ptr %40, align 8, !tbaa !53
  %242 = xor i64 %241, %240
  store i64 %242, ptr %40, align 8, !tbaa !53
  %243 = load i64, ptr %239, align 8, !tbaa !57
  br label %413

244:                                              ; preds = %192
  %245 = icmp eq i32 %7, 0
  br i1 %245, label %279, label %246, !prof !74

246:                                              ; preds = %244
  store i32 %7, ptr %153, align 4, !tbaa !51
  %247 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 1, i64 %46
  %248 = load i8, ptr %247, align 1, !tbaa !62
  %249 = sext i8 %248 to i32
  %250 = sub nsw i32 %164, %249
  store i32 %250, ptr %27, align 4, !tbaa !49
  %251 = add nsw i32 %7, -1
  %252 = zext nneg i32 %251 to i64
  %253 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 %252, i64 %46
  %254 = load i8, ptr %253, align 1, !tbaa !62
  %255 = sext i8 %254 to i32
  %256 = add nsw i32 %250, %255
  store i32 %256, ptr %27, align 4, !tbaa !49
  %257 = zext nneg i32 %7 to i64
  %258 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %257, i64 %46
  %259 = load i64, ptr %258, align 8, !tbaa !57
  %260 = load i64, ptr %40, align 8, !tbaa !53
  %261 = xor i64 %260, %259
  store i64 %261, ptr %40, align 8, !tbaa !53
  %262 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 %257
  %263 = load i32, ptr %262, align 4, !tbaa !51
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr %262, align 4, !tbaa !51
  %265 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %266 = load i32, ptr %265, align 8, !tbaa !51
  %267 = add nsw i32 %266, -1
  store i32 %267, ptr %265, align 8, !tbaa !51
  %268 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @material, i64 0, i64 2), align 8, !tbaa !51
  %269 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %270 = load i32, ptr %269, align 8, !tbaa !61
  %271 = sub nsw i32 %270, %268
  store i32 %271, ptr %269, align 8, !tbaa !61
  %272 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %257
  %273 = load i32, ptr %272, align 4, !tbaa !51
  %274 = add nsw i32 %273, %271
  store i32 %274, ptr %269, align 8, !tbaa !61
  %275 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %257
  %276 = load i64, ptr %275, align 8, !tbaa !57
  %277 = or i64 %276, %48
  store i64 %277, ptr %275, align 8, !tbaa !57
  %278 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  br label %413

279:                                              ; preds = %244
  %280 = add nuw nsw i32 %4, 16
  %281 = icmp eq i32 %5, %280
  br i1 %281, label %282, label %284, !prof !75

282:                                              ; preds = %279
  %283 = add nuw nsw i32 %4, 8
  store i32 %283, ptr %12, align 8, !tbaa !35
  br label %284

284:                                              ; preds = %282, %279
  %285 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 2, i64 %46
  %286 = load i64, ptr %285, align 8, !tbaa !57
  %287 = load i64, ptr %40, align 8, !tbaa !53
  %288 = xor i64 %287, %286
  store i64 %288, ptr %40, align 8, !tbaa !53
  %289 = load i64, ptr %285, align 8, !tbaa !57
  br label %413

290:                                              ; preds = %192
  %291 = add i32 %152, -7
  %292 = icmp ult i32 %291, -2
  br i1 %292, label %293, label %296, !prof !76

293:                                              ; preds = %290
  %294 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %175, i64 %46
  %295 = load i64, ptr %294, align 8, !tbaa !57
  br label %413

296:                                              ; preds = %290
  %297 = icmp eq i32 %152, 5
  %298 = load i64, ptr %40, align 8, !tbaa !53
  br i1 %297, label %299, label %356, !prof !77

299:                                              ; preds = %296
  %300 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 5, i64 %46
  %301 = load i64, ptr %300, align 8, !tbaa !57
  %302 = xor i64 %298, %301
  store i64 %302, ptr %40, align 8, !tbaa !53
  %303 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  store i32 %5, ptr %303, align 8, !tbaa !78
  %304 = load i32, ptr %24, align 4, !tbaa !47
  %305 = and i32 %304, -7
  store i32 %305, ptr %24, align 4, !tbaa !47
  br i1 %180, label %418, label %306, !prof !79

306:                                              ; preds = %299
  %307 = icmp eq i32 %11, 1
  %308 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 33
  %309 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 32
  %310 = select i1 %307, i32 61, i32 59, !prof !80
  %311 = select i1 %307, ptr %308, ptr %309, !prof !80
  %312 = load i32, ptr %311, align 4, !tbaa !51
  %313 = zext nneg i32 %310 to i64
  %314 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %313
  store i32 7, ptr %314, align 4, !tbaa !51
  %315 = icmp eq i32 %312, %310
  %316 = icmp eq i32 %312, %5
  %317 = or i1 %315, %316
  br i1 %317, label %321, label %318, !prof !81

318:                                              ; preds = %306
  %319 = sext i32 %312 to i64
  %320 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %319
  store i32 13, ptr %320, align 4, !tbaa !51
  br label %321

321:                                              ; preds = %318, %306
  %322 = sext i32 %312 to i64
  %323 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 6, i64 %322
  %324 = load i8, ptr %323, align 1, !tbaa !62
  %325 = sext i8 %324 to i32
  %326 = load i32, ptr %27, align 4, !tbaa !49
  %327 = sub nsw i32 %326, %325
  store i32 %327, ptr %27, align 4, !tbaa !49
  %328 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 6, i64 %313
  %329 = load i8, ptr %328, align 1, !tbaa !62
  %330 = sext i8 %329 to i32
  %331 = add nsw i32 %327, %330
  store i32 %331, ptr %27, align 4, !tbaa !49
  %332 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 7, i64 %322
  %333 = load i64, ptr %332, align 8, !tbaa !57
  %334 = xor i64 %333, %302
  store i64 %334, ptr %40, align 8, !tbaa !53
  %335 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 7, i64 %313
  %336 = load i64, ptr %335, align 8, !tbaa !57
  %337 = xor i64 %336, %334
  store i64 %337, ptr %40, align 8, !tbaa !53
  %338 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %322
  %339 = load i64, ptr %338, align 8, !tbaa !57
  %340 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %341 = load i64, ptr %340, align 8, !tbaa !57
  %342 = xor i64 %341, %339
  store i64 %342, ptr %340, align 8, !tbaa !57
  %343 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %313
  %344 = load i64, ptr %343, align 8, !tbaa !57
  %345 = xor i64 %344, %342
  store i64 %345, ptr %340, align 8, !tbaa !57
  %346 = load i32, ptr %303, align 8, !tbaa !78
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %347
  %349 = load i64, ptr %348, align 8, !tbaa !57
  %350 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  store i64 %349, ptr %350, align 8, !tbaa !57
  %351 = add nsw i32 %11, -1
  %352 = zext nneg i32 %351 to i64
  %353 = getelementptr inbounds [4 x i64], ptr @CastleMask, i64 0, i64 %352
  %354 = load i64, ptr %353, align 8, !tbaa !57
  %355 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  br label %413

356:                                              ; preds = %296
  %357 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 6, i64 %46
  %358 = load i64, ptr %357, align 8, !tbaa !57
  %359 = xor i64 %298, %358
  store i64 %359, ptr %40, align 8, !tbaa !53
  %360 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  store i32 %5, ptr %360, align 4, !tbaa !82
  %361 = load i32, ptr %24, align 4, !tbaa !47
  %362 = and i32 %361, -25
  store i32 %362, ptr %24, align 4, !tbaa !47
  br i1 %180, label %418, label %363, !prof !83

363:                                              ; preds = %356
  %364 = icmp eq i32 %11, 3
  %365 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 35
  %366 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 34
  %367 = select i1 %364, i32 5, i32 3, !prof !84
  %368 = select i1 %364, ptr %365, ptr %366, !prof !84
  %369 = load i32, ptr %368, align 4, !tbaa !51
  %370 = zext nneg i32 %367 to i64
  %371 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %370
  store i32 8, ptr %371, align 4, !tbaa !51
  %372 = icmp eq i32 %369, %367
  %373 = icmp eq i32 %369, %5
  %374 = or i1 %372, %373
  br i1 %374, label %378, label %375, !prof !85

375:                                              ; preds = %363
  %376 = sext i32 %369 to i64
  %377 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %376
  store i32 13, ptr %377, align 4, !tbaa !51
  br label %378

378:                                              ; preds = %375, %363
  %379 = sext i32 %369 to i64
  %380 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 7, i64 %379
  %381 = load i8, ptr %380, align 1, !tbaa !62
  %382 = sext i8 %381 to i32
  %383 = load i32, ptr %27, align 4, !tbaa !49
  %384 = sub nsw i32 %383, %382
  store i32 %384, ptr %27, align 4, !tbaa !49
  %385 = getelementptr inbounds [12 x [64 x i8]], ptr @psq_table, i64 0, i64 7, i64 %370
  %386 = load i8, ptr %385, align 1, !tbaa !62
  %387 = sext i8 %386 to i32
  %388 = add nsw i32 %384, %387
  store i32 %388, ptr %27, align 4, !tbaa !49
  %389 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 8, i64 %379
  %390 = load i64, ptr %389, align 8, !tbaa !57
  %391 = xor i64 %390, %359
  store i64 %391, ptr %40, align 8, !tbaa !53
  %392 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 8, i64 %370
  %393 = load i64, ptr %392, align 8, !tbaa !57
  %394 = xor i64 %393, %391
  store i64 %394, ptr %40, align 8, !tbaa !53
  %395 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %379
  %396 = load i64, ptr %395, align 8, !tbaa !57
  %397 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %398 = load i64, ptr %397, align 8, !tbaa !57
  %399 = xor i64 %398, %396
  store i64 %399, ptr %397, align 8, !tbaa !57
  %400 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %370
  %401 = load i64, ptr %400, align 8, !tbaa !57
  %402 = xor i64 %401, %399
  store i64 %402, ptr %397, align 8, !tbaa !57
  %403 = load i32, ptr %360, align 4, !tbaa !82
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %404
  %406 = load i64, ptr %405, align 8, !tbaa !57
  %407 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  store i64 %406, ptr %407, align 8, !tbaa !57
  %408 = add nsw i32 %11, -1
  %409 = zext nneg i32 %408 to i64
  %410 = getelementptr inbounds [4 x i64], ptr @CastleMask, i64 0, i64 %409
  %411 = load i64, ptr %410, align 8, !tbaa !57
  %412 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  br label %413

413:                                              ; preds = %238, %200, %293, %378, %321, %246, %284
  %414 = phi ptr [ %43, %284 ], [ %278, %246 ], [ %355, %321 ], [ %412, %378 ], [ %40, %293 ], [ %232, %200 ], [ %43, %238 ]
  %415 = phi i64 [ %289, %284 ], [ %48, %246 ], [ %354, %321 ], [ %411, %378 ], [ %295, %293 ], [ %48, %200 ], [ %243, %238 ]
  %416 = load i64, ptr %414, align 8, !tbaa !57
  %417 = xor i64 %416, %415
  store i64 %417, ptr %414, align 8, !tbaa !57
  br label %418

418:                                              ; preds = %413, %299, %356
  %419 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 35
  %420 = load i32, ptr %419, align 8, !tbaa !86
  %421 = icmp eq i32 %4, %420
  %422 = icmp eq i32 %5, %420
  %423 = or i1 %421, %422
  br i1 %423, label %424, label %427, !prof !87

424:                                              ; preds = %418
  %425 = load i32, ptr %24, align 4, !tbaa !47
  %426 = and i32 %425, -9
  store i32 %426, ptr %24, align 4, !tbaa !47
  br label %427

427:                                              ; preds = %418, %424
  %428 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 34
  %429 = load i32, ptr %428, align 4, !tbaa !88
  %430 = icmp eq i32 %4, %429
  %431 = icmp eq i32 %5, %429
  %432 = or i1 %430, %431
  br i1 %432, label %433, label %436, !prof !89

433:                                              ; preds = %427
  %434 = load i32, ptr %24, align 4, !tbaa !47
  %435 = and i32 %434, -17
  store i32 %435, ptr %24, align 4, !tbaa !47
  br label %436

436:                                              ; preds = %427, %433
  %437 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 33
  %438 = load i32, ptr %437, align 8, !tbaa !90
  %439 = icmp eq i32 %4, %438
  %440 = icmp eq i32 %5, %438
  %441 = or i1 %439, %440
  br i1 %441, label %442, label %445, !prof !91

442:                                              ; preds = %436
  %443 = load i32, ptr %24, align 4, !tbaa !47
  %444 = and i32 %443, -3
  store i32 %444, ptr %24, align 4, !tbaa !47
  br label %445

445:                                              ; preds = %436, %442
  %446 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 32
  %447 = load i32, ptr %446, align 4, !tbaa !92
  %448 = icmp eq i32 %4, %447
  %449 = icmp eq i32 %5, %447
  %450 = or i1 %448, %449
  br i1 %450, label %451, label %454, !prof !93

451:                                              ; preds = %445
  %452 = load i32, ptr %24, align 4, !tbaa !47
  %453 = and i32 %452, -5
  store i32 %453, ptr %24, align 4, !tbaa !47
  br label %454

454:                                              ; preds = %445, %451
  %455 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %456 = load i64, ptr %455, align 8, !tbaa !65
  %457 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %458 = load i64, ptr %457, align 8, !tbaa !66
  %459 = or i64 %458, %456
  %460 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  store i64 %459, ptr %460, align 8, !tbaa !94
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !34 {
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
  %14 = load i64, ptr %13, align 8, !tbaa !57
  %15 = zext nneg i32 %4 to i64
  %16 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !57
  %18 = or i64 %17, %14
  %19 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %20 = load i32, ptr %19, align 4, !tbaa !70
  %21 = xor i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !70
  %22 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %23 = load i32, ptr %22, align 8, !tbaa !41
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %22, align 8, !tbaa !41
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %25
  %27 = load i32, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  store i32 %27, ptr %28, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %25, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !46
  %31 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 15
  store i32 %30, ptr %31, align 4, !tbaa !45
  %32 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %25, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !48
  %34 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  store i32 %33, ptr %34, align 4, !tbaa !47
  %35 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %25, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !50
  %37 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 7
  store i32 %36, ptr %37, align 4, !tbaa !49
  %38 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %25, i32 4
  %39 = load i64, ptr %38, align 8, !tbaa !54
  %40 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  store i64 %39, ptr %40, align 8, !tbaa !53
  %41 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 18, i64 %25, i32 5
  %42 = load i64, ptr %41, align 8, !tbaa !56
  %43 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 17
  store i64 %42, ptr %43, align 8, !tbaa !55
  %44 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %12
  %45 = load i32, ptr %44, align 4, !tbaa !51
  %46 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %15
  store i32 %45, ptr %46, align 4, !tbaa !51
  %47 = and i32 %1, 8388608
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %74, !prof !58

49:                                               ; preds = %2
  %50 = icmp eq i32 %4, %5
  br i1 %50, label %52, label %51, !prof !95

51:                                               ; preds = %49
  store i32 %9, ptr %44, align 4, !tbaa !51
  br label %52

52:                                               ; preds = %51, %49
  %53 = icmp eq i32 %9, 13
  br i1 %53, label %115, label %54, !prof !96

54:                                               ; preds = %52
  %55 = zext nneg i32 %9 to i64
  %56 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !51
  %58 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  %59 = load i32, ptr %58, align 8, !tbaa !61
  %60 = add nsw i32 %59, %57
  store i32 %60, ptr %58, align 8, !tbaa !61
  %61 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %55
  %62 = load i64, ptr %61, align 8, !tbaa !57
  %63 = xor i64 %62, %14
  store i64 %63, ptr %61, align 8, !tbaa !57
  %64 = and i32 %45, 1
  %65 = icmp eq i32 %64, 0
  %66 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %67 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %68 = select i1 %65, ptr %66, ptr %67, !prof !97
  %69 = load i64, ptr %68, align 8, !tbaa !57
  %70 = xor i64 %69, %14
  store i64 %70, ptr %68, align 8, !tbaa !57
  %71 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 %55
  %72 = load i32, ptr %71, align 4, !tbaa !51
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %71, align 4, !tbaa !51
  br label %115

74:                                               ; preds = %2
  store i32 13, ptr %44, align 4, !tbaa !51
  %75 = icmp eq i32 %45, 1
  %76 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  br i1 %75, label %77, label %96, !prof !98

77:                                               ; preds = %74
  %78 = add nuw nsw i32 %5, 8
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !57
  %82 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %83 = load i64, ptr %82, align 8, !tbaa !66
  %84 = or i64 %83, %81
  store i64 %84, ptr %82, align 8, !tbaa !66
  %85 = load i64, ptr %80, align 8, !tbaa !57
  %86 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %87 = load i64, ptr %86, align 8, !tbaa !57
  %88 = or i64 %87, %85
  store i64 %88, ptr %86, align 8, !tbaa !57
  %89 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @material, i64 0, i64 2), align 8, !tbaa !51
  %90 = load i32, ptr %76, align 8, !tbaa !61
  %91 = add nsw i32 %90, %89
  store i32 %91, ptr %76, align 8, !tbaa !61
  %92 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %93 = load i32, ptr %92, align 8, !tbaa !51
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %92, align 8, !tbaa !51
  %95 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %79
  store i32 2, ptr %95, align 4, !tbaa !51
  br label %115

96:                                               ; preds = %74
  %97 = add nsw i32 %5, -8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !57
  %101 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %102 = load i64, ptr %101, align 8, !tbaa !65
  %103 = or i64 %102, %100
  store i64 %103, ptr %101, align 8, !tbaa !65
  %104 = load i64, ptr %99, align 8, !tbaa !57
  %105 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %106 = load i64, ptr %105, align 8, !tbaa !57
  %107 = or i64 %106, %104
  store i64 %107, ptr %105, align 8, !tbaa !57
  %108 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @material, i64 0, i64 1), align 4, !tbaa !51
  %109 = load i32, ptr %76, align 8, !tbaa !61
  %110 = add nsw i32 %109, %108
  store i32 %110, ptr %76, align 8, !tbaa !61
  %111 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %112 = load i32, ptr %111, align 4, !tbaa !51
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr %111, align 4, !tbaa !51
  %114 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %98
  store i32 1, ptr %114, align 4, !tbaa !51
  br label %115

115:                                              ; preds = %77, %96, %52, %54
  %116 = icmp eq i32 %11, 0
  br i1 %116, label %117, label %129, !prof !68

117:                                              ; preds = %115
  %118 = sext i32 %45 to i64
  %119 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !57
  %121 = xor i64 %120, %18
  store i64 %121, ptr %119, align 8, !tbaa !57
  %122 = and i32 %45, 1
  %123 = icmp eq i32 %122, 0
  %124 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %125 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %126 = select i1 %123, ptr %125, ptr %124, !prof !69
  %127 = load i64, ptr %126, align 8, !tbaa !57
  %128 = xor i64 %127, %18
  store i64 %128, ptr %126, align 8, !tbaa !57
  br label %129

129:                                              ; preds = %117, %115
  %130 = icmp eq i32 %7, 0
  br i1 %130, label %170, label %131, !prof !99

131:                                              ; preds = %129
  %132 = and i32 %45, 1
  %133 = icmp eq i32 %132, 0
  %134 = zext nneg i32 %7 to i64
  %135 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 %134
  %136 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %134
  %137 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 6
  br i1 %133, label %154, label %138, !prof !100

138:                                              ; preds = %131
  store i32 1, ptr %46, align 4, !tbaa !51
  %139 = load i32, ptr %135, align 4, !tbaa !51
  %140 = add nsw i32 %139, -1
  store i32 %140, ptr %135, align 4, !tbaa !51
  %141 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %142 = load i32, ptr %141, align 4, !tbaa !51
  %143 = add nsw i32 %142, 1
  store i32 %143, ptr %141, align 4, !tbaa !51
  %144 = load i32, ptr %136, align 4, !tbaa !51
  %145 = load i32, ptr %137, align 8, !tbaa !61
  %146 = sub nsw i32 %145, %144
  store i32 %146, ptr %137, align 8, !tbaa !61
  %147 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @material, i64 0, i64 1), align 4, !tbaa !51
  %148 = add nsw i32 %147, %146
  store i32 %148, ptr %137, align 8, !tbaa !61
  %149 = load i64, ptr %16, align 8, !tbaa !57
  %150 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %151 = load i64, ptr %150, align 8, !tbaa !57
  %152 = or i64 %151, %149
  store i64 %152, ptr %150, align 8, !tbaa !57
  %153 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %134
  br label %245

154:                                              ; preds = %131
  store i32 2, ptr %46, align 4, !tbaa !51
  %155 = load i32, ptr %135, align 4, !tbaa !51
  %156 = add nsw i32 %155, -1
  store i32 %156, ptr %135, align 4, !tbaa !51
  %157 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %158 = load i32, ptr %157, align 8, !tbaa !51
  %159 = add nsw i32 %158, 1
  store i32 %159, ptr %157, align 8, !tbaa !51
  %160 = load i32, ptr %136, align 4, !tbaa !51
  %161 = load i32, ptr %137, align 8, !tbaa !61
  %162 = sub nsw i32 %161, %160
  store i32 %162, ptr %137, align 8, !tbaa !61
  %163 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @material, i64 0, i64 2), align 8, !tbaa !51
  %164 = add nsw i32 %163, %162
  store i32 %164, ptr %137, align 8, !tbaa !61
  %165 = load i64, ptr %16, align 8, !tbaa !57
  %166 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %167 = load i64, ptr %166, align 8, !tbaa !57
  %168 = or i64 %167, %165
  store i64 %168, ptr %166, align 8, !tbaa !57
  %169 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 %134
  br label %245

170:                                              ; preds = %129
  switch i32 %45, label %251 [
    i32 5, label %171
    i32 6, label %208
  ], !prof !101

171:                                              ; preds = %170
  %172 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  store i32 %4, ptr %172, align 8, !tbaa !78
  %173 = load i64, ptr %16, align 8, !tbaa !57
  %174 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  store i64 %173, ptr %174, align 8, !tbaa !57
  br i1 %116, label %251, label %175, !prof !79

175:                                              ; preds = %171
  %176 = icmp eq i32 %11, 1
  %177 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 33
  %178 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 32
  %179 = select i1 %176, ptr %177, ptr %178, !prof !80
  %180 = select i1 %176, i32 61, i32 59, !prof !80
  %181 = load i32, ptr %179, align 4, !tbaa !51
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %182
  store i32 7, ptr %183, align 4, !tbaa !51
  %184 = icmp eq i32 %180, %181
  %185 = icmp eq i32 %180, %4
  %186 = or i1 %185, %184
  br i1 %186, label %190, label %187, !prof !81

187:                                              ; preds = %175
  %188 = zext nneg i32 %180 to i64
  %189 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %188
  store i32 13, ptr %189, align 4, !tbaa !51
  br label %190

190:                                              ; preds = %187, %175
  %191 = zext nneg i32 %180 to i64
  %192 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %191
  %193 = load i64, ptr %192, align 8, !tbaa !57
  %194 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %195 = load i64, ptr %194, align 8, !tbaa !57
  %196 = xor i64 %195, %193
  store i64 %196, ptr %194, align 8, !tbaa !57
  %197 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %182
  %198 = load i64, ptr %197, align 8, !tbaa !57
  %199 = xor i64 %198, %196
  store i64 %199, ptr %194, align 8, !tbaa !57
  %200 = load i32, ptr %172, align 8, !tbaa !78
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %201
  %203 = load i64, ptr %202, align 8, !tbaa !57
  store i64 %203, ptr %174, align 8, !tbaa !57
  %204 = add nsw i32 %11, -1
  %205 = zext nneg i32 %204 to i64
  %206 = getelementptr inbounds [4 x i64], ptr @CastleMask, i64 0, i64 %205
  %207 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  br label %245

208:                                              ; preds = %170
  %209 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  store i32 %4, ptr %209, align 4, !tbaa !82
  %210 = load i64, ptr %16, align 8, !tbaa !57
  %211 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  store i64 %210, ptr %211, align 8, !tbaa !57
  br i1 %116, label %251, label %212, !prof !83

212:                                              ; preds = %208
  %213 = icmp eq i32 %11, 3
  %214 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 35
  %215 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 34
  %216 = select i1 %213, ptr %214, ptr %215, !prof !84
  %217 = select i1 %213, i32 5, i32 3, !prof !84
  %218 = load i32, ptr %216, align 4, !tbaa !51
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %219
  store i32 8, ptr %220, align 4, !tbaa !51
  %221 = icmp eq i32 %217, %218
  %222 = icmp eq i32 %217, %4
  %223 = or i1 %222, %221
  br i1 %223, label %227, label %224, !prof !85

224:                                              ; preds = %212
  %225 = zext nneg i32 %217 to i64
  %226 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %225
  store i32 13, ptr %226, align 4, !tbaa !51
  br label %227

227:                                              ; preds = %224, %212
  %228 = zext nneg i32 %217 to i64
  %229 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %228
  %230 = load i64, ptr %229, align 8, !tbaa !57
  %231 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %232 = load i64, ptr %231, align 8, !tbaa !57
  %233 = xor i64 %232, %230
  store i64 %233, ptr %231, align 8, !tbaa !57
  %234 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %219
  %235 = load i64, ptr %234, align 8, !tbaa !57
  %236 = xor i64 %235, %233
  store i64 %236, ptr %231, align 8, !tbaa !57
  %237 = load i32, ptr %209, align 4, !tbaa !82
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %238
  %240 = load i64, ptr %239, align 8, !tbaa !57
  store i64 %240, ptr %211, align 8, !tbaa !57
  %241 = add nsw i32 %11, -1
  %242 = zext nneg i32 %241 to i64
  %243 = getelementptr inbounds [4 x i64], ptr @CastleMask, i64 0, i64 %242
  %244 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  br label %245

245:                                              ; preds = %154, %138, %227, %190
  %246 = phi ptr [ %207, %190 ], [ %244, %227 ], [ %153, %138 ], [ %169, %154 ]
  %247 = phi ptr [ %206, %190 ], [ %243, %227 ], [ %16, %138 ], [ %16, %154 ]
  %248 = load i64, ptr %247, align 8, !tbaa !57
  %249 = load i64, ptr %246, align 8, !tbaa !57
  %250 = xor i64 %249, %248
  store i64 %250, ptr %246, align 8, !tbaa !57
  br label %251

251:                                              ; preds = %245, %170, %171, %208
  %252 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %253 = load i64, ptr %252, align 8, !tbaa !65
  %254 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %255 = load i64, ptr %254, align 8, !tbaa !66
  %256 = or i64 %255, %253
  %257 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  store i64 %256, ptr %257, align 8, !tbaa !94
  ret void
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 128361366639}
!8 = !{!"MaxCount", i64 7592818589}
!9 = !{!"MaxInternalCount", i64 5393808666}
!10 = !{!"MaxFunctionCount", i64 7592818589}
!11 = !{!"NumCounts", i64 1723}
!12 = !{!"NumFunctions", i64 109}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7592818589, i32 1}
!18 = !{i32 100000, i64 5393808666, i32 2}
!19 = !{i32 200000, i64 2869551984, i32 6}
!20 = !{i32 300000, i64 1728514292, i32 11}
!21 = !{i32 400000, i64 824050972, i32 24}
!22 = !{i32 500000, i64 588473769, i32 42}
!23 = !{i32 600000, i64 446369574, i32 68}
!24 = !{i32 700000, i64 286932458, i32 105}
!25 = !{i32 800000, i64 196614852, i32 160}
!26 = !{i32 900000, i64 107044397, i32 249}
!27 = !{i32 950000, i64 60101921, i32 326}
!28 = !{i32 990000, i64 15736932, i32 482}
!29 = !{i32 999000, i64 2025695, i32 659}
!30 = !{i32 999900, i64 318185, i32 779}
!31 = !{i32 999990, i64 50049, i32 848}
!32 = !{i32 999999, i64 3896, i32 923}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 916714589}
!35 = !{!36, !37, i64 456}
!36 = !{!"_ZTS7state_t", !37, i64 0, !38, i64 4, !40, i64 264, !40, i64 272, !40, i64 280, !38, i64 288, !37, i64 392, !37, i64 396, !38, i64 400, !37, i64 452, !37, i64 456, !37, i64 460, !37, i64 464, !37, i64 468, !37, i64 472, !37, i64 476, !40, i64 480, !40, i64 488, !38, i64 496, !38, i64 2544, !38, i64 2800, !38, i64 3056, !40, i64 4080, !40, i64 4088, !37, i64 4096, !38, i64 4100, !37, i64 4356, !37, i64 4360, !37, i64 4364, !37, i64 4368, !37, i64 4372, !37, i64 4376, !37, i64 4380, !37, i64 4384, !37, i64 4388, !37, i64 4392, !38, i64 4400}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"long long", !38, i64 0}
!41 = !{!36, !37, i64 472}
!42 = !{!43, !37, i64 0}
!43 = !{!"_ZTS6move_x", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !40, i64 16, !40, i64 24}
!44 = !{!"branch_weights", i32 911229308, i32 5485281}
!45 = !{!36, !37, i64 476}
!46 = !{!43, !37, i64 4}
!47 = !{!36, !37, i64 452}
!48 = !{!43, !37, i64 8}
!49 = !{!36, !37, i64 396}
!50 = !{!43, !37, i64 12}
!51 = !{!37, !37, i64 0}
!52 = !{!"branch_weights", i32 380335830, i32 536378759}
!53 = !{!36, !40, i64 480}
!54 = !{!43, !40, i64 16}
!55 = !{!36, !40, i64 488}
!56 = !{!43, !40, i64 24}
!57 = !{!40, !40, i64 0}
!58 = !{!"branch_weights", i32 916685841, i32 28748}
!59 = !{!"branch_weights", i32 297175719, i32 619510122}
!60 = !{!"branch_weights", i32 133630344, i32 163545375}
!61 = !{!36, !37, i64 392}
!62 = !{!38, !38, i64 0}
!63 = !{!"branch_weights", i32 106241733, i32 190933986}
!64 = !{!"branch_weights", i32 3434, i32 25314}
!65 = !{!36, !40, i64 280}
!66 = !{!36, !40, i64 272}
!67 = !{!"branch_weights", i32 125169032, i32 791545557}
!68 = !{!"branch_weights", i32 915506046, i32 1208543}
!69 = !{!"branch_weights", i32 469136472, i32 446369574}
!70 = !{!36, !37, i64 460}
!71 = !{!"branch_weights", i32 791545557, i32 60897874, i32 64271158}
!72 = !{!"branch_weights", i32 59529399, i32 1368475}
!73 = !{!"branch_weights", i32 13778594, i32 45750805}
!74 = !{!"branch_weights", i32 63174677, i32 1096481}
!75 = !{!"branch_weights", i32 11653650, i32 51521027}
!76 = !{!"branch_weights", i32 582267540, i32 209278017}
!77 = !{!"branch_weights", i32 84077986, i32 125200031}
!78 = !{!36, !37, i64 464}
!79 = !{!"branch_weights", i32 83759801, i32 318185}
!80 = !{!"branch_weights", i32 157782, i32 160403}
!81 = !{!"branch_weights", i32 0, i32 318185}
!82 = !{!36, !37, i64 468}
!83 = !{!"branch_weights", i32 124309673, i32 890358}
!84 = !{!"branch_weights", i32 716744, i32 173614}
!85 = !{!"branch_weights", i32 0, i32 890358}
!86 = !{!36, !37, i64 4392}
!87 = !{!"branch_weights", i32 38123470, i32 878591119}
!88 = !{!36, !37, i64 4388}
!89 = !{!"branch_weights", i32 29053789, i32 887660800}
!90 = !{!36, !37, i64 4384}
!91 = !{!"branch_weights", i32 18551426, i32 898163163}
!92 = !{!36, !37, i64 4380}
!93 = !{!"branch_weights", i32 19534438, i32 897180151}
!94 = !{!36, !40, i64 264}
!95 = !{!"branch_weights", i32 0, i32 916685841}
!96 = !{!"branch_weights", i32 619510122, i32 297175719}
!97 = !{!"branch_weights", i32 163545375, i32 133630344}
!98 = !{!"branch_weights", i32 25314, i32 3434}
!99 = !{!"branch_weights", i32 914249633, i32 2464956}
!100 = !{!"branch_weights", i32 1096481, i32 1368475}
!101 = !{!"branch_weights", i32 704971616, i32 84077986, i32 125200031}
