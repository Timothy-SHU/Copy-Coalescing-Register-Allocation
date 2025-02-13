; ModuleID = 'spec_qsort/spec_qsort.c'
source_filename = "spec_qsort/spec_qsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @spec_qsort(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !39 {
  %5 = sub i64 0, %2
  %6 = icmp ne i64 %2, 8
  %7 = zext i1 %6 to i32
  %8 = icmp ne i64 %2, 4
  %9 = zext i1 %8 to i32
  %10 = ptrtoint ptr %0 to i64
  %11 = or i64 %10, %2
  %12 = and i64 %11, 7
  %13 = icmp eq i64 %12, 0
  %14 = select i1 %13, i32 %7, i32 2, !prof !40
  %15 = and i64 %11, 3
  %16 = icmp eq i64 %15, 0
  %17 = select i1 %16, i32 %9, i32 2, !prof !41
  %18 = icmp ult i64 %1, 7
  br i1 %18, label %21, label %19, !prof !42

19:                                               ; preds = %4
  %20 = trunc i64 %2 to i32
  br label %56

21:                                               ; preds = %242, %4
  %22 = phi i64 [ %1, %4 ], [ %245, %242 ]
  %23 = phi ptr [ %0, %4 ], [ %244, %242 ]
  %24 = phi i32 [ %14, %4 ], [ %250, %242 ]
  %25 = phi i32 [ %17, %4 ], [ %253, %242 ]
  %26 = mul i64 %22, %2
  %27 = getelementptr inbounds i8, ptr %23, i64 %26
  %28 = icmp sgt i64 %26, %2
  br i1 %28, label %29, label %255, !prof !43

29:                                               ; preds = %21
  %30 = getelementptr inbounds i8, ptr %23, i64 %2
  br label %31

31:                                               ; preds = %29, %53
  %32 = phi ptr [ %30, %29 ], [ %54, %53 ]
  %33 = icmp ugt ptr %32, %23
  br i1 %33, label %34, label %53, !prof !44

34:                                               ; preds = %31, %51
  %35 = phi ptr [ %36, %51 ], [ %32, %31 ]
  %36 = getelementptr inbounds i8, ptr %35, i64 %5
  %37 = tail call i32 %3(ptr noundef nonnull %36, ptr noundef nonnull %35) #3
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %53, !prof !45

39:                                               ; preds = %34
  %40 = icmp eq i32 %24, 0
  br i1 %40, label %41, label %44, !prof !46

41:                                               ; preds = %39
  %42 = load i64, ptr %35, align 8, !tbaa !47
  %43 = load i64, ptr %36, align 8, !tbaa !47
  store i64 %43, ptr %35, align 8, !tbaa !47
  store i64 %42, ptr %36, align 8, !tbaa !47
  br label %51

44:                                               ; preds = %39
  %45 = icmp eq i32 %25, 0
  br i1 %45, label %46, label %49, !prof !51

46:                                               ; preds = %44
  %47 = load i32, ptr %35, align 4, !tbaa !52
  %48 = load i32, ptr %36, align 4, !tbaa !52
  store i32 %48, ptr %35, align 4, !tbaa !52
  store i32 %47, ptr %36, align 4, !tbaa !52
  br label %51

49:                                               ; preds = %44
  %50 = trunc i64 %2 to i32
  tail call fastcc void @swapfunc(ptr noundef nonnull %35, ptr noundef nonnull %36, i32 noundef %50, i32 noundef %24, i32 noundef %25) #4
  br label %51

51:                                               ; preds = %41, %49, %46
  %52 = icmp ugt ptr %36, %23
  br i1 %52, label %34, label %53, !prof !54, !llvm.loop !55

53:                                               ; preds = %51, %34, %31
  %54 = getelementptr inbounds i8, ptr %32, i64 %2
  %55 = icmp ult ptr %54, %27
  br i1 %55, label %31, label %255, !prof !57, !llvm.loop !58

56:                                               ; preds = %19, %242
  %57 = phi i32 [ %17, %19 ], [ %253, %242 ]
  %58 = phi i32 [ %14, %19 ], [ %250, %242 ]
  %59 = phi i64 [ %10, %19 ], [ %246, %242 ]
  %60 = phi ptr [ %0, %19 ], [ %244, %242 ]
  %61 = phi i64 [ %1, %19 ], [ %245, %242 ]
  %62 = lshr i64 %61, 1
  %63 = mul i64 %62, %2
  %64 = getelementptr inbounds i8, ptr %60, i64 %63
  %65 = icmp eq i64 %61, 7
  br i1 %65, label %91, label %66, !prof !59

66:                                               ; preds = %56
  %67 = add i64 %61, -1
  %68 = mul i64 %67, %2
  %69 = getelementptr inbounds i8, ptr %60, i64 %68
  %70 = icmp ugt i64 %61, 40
  br i1 %70, label %71, label %86, !prof !60

71:                                               ; preds = %66
  %72 = lshr i64 %61, 3
  %73 = mul i64 %72, %2
  %74 = getelementptr inbounds i8, ptr %60, i64 %73
  %75 = shl i64 %73, 1
  %76 = getelementptr inbounds i8, ptr %60, i64 %75
  %77 = tail call fastcc ptr @med3(ptr noundef %60, ptr noundef %74, ptr noundef %76, ptr noundef %3) #4
  %78 = sub i64 0, %73
  %79 = getelementptr inbounds i8, ptr %64, i64 %78
  %80 = getelementptr inbounds i8, ptr %64, i64 %73
  %81 = tail call fastcc ptr @med3(ptr noundef %79, ptr noundef %64, ptr noundef %80, ptr noundef %3) #4
  %82 = sub i64 0, %75
  %83 = getelementptr inbounds i8, ptr %69, i64 %82
  %84 = getelementptr inbounds i8, ptr %69, i64 %78
  %85 = tail call fastcc ptr @med3(ptr noundef %83, ptr noundef %84, ptr noundef %69, ptr noundef %3) #4
  br label %86

86:                                               ; preds = %71, %66
  %87 = phi ptr [ %85, %71 ], [ %69, %66 ]
  %88 = phi ptr [ %81, %71 ], [ %64, %66 ]
  %89 = phi ptr [ %77, %71 ], [ %60, %66 ]
  %90 = tail call fastcc ptr @med3(ptr noundef %89, ptr noundef %88, ptr noundef %87, ptr noundef %3) #4
  br label %91

91:                                               ; preds = %86, %56
  %92 = phi ptr [ %90, %86 ], [ %64, %56 ]
  %93 = icmp eq i32 %58, 0
  br i1 %93, label %94, label %97, !prof !61

94:                                               ; preds = %91
  %95 = load i64, ptr %60, align 8, !tbaa !47
  %96 = load i64, ptr %92, align 8, !tbaa !47
  store i64 %96, ptr %60, align 8, !tbaa !47
  store i64 %95, ptr %92, align 8, !tbaa !47
  br label %103

97:                                               ; preds = %91
  %98 = icmp eq i32 %57, 0
  br i1 %98, label %99, label %102, !prof !62

99:                                               ; preds = %97
  %100 = load i32, ptr %60, align 4, !tbaa !52
  %101 = load i32, ptr %92, align 4, !tbaa !52
  store i32 %101, ptr %60, align 4, !tbaa !52
  store i32 %100, ptr %92, align 4, !tbaa !52
  br label %103

102:                                              ; preds = %97
  tail call fastcc void @swapfunc(ptr noundef %60, ptr noundef %92, i32 noundef %20, i32 noundef %58, i32 noundef %57) #4
  br label %103

103:                                              ; preds = %99, %102, %94
  %104 = getelementptr inbounds i8, ptr %60, i64 %2
  %105 = add i64 %61, -1
  %106 = mul i64 %105, %2
  %107 = getelementptr inbounds i8, ptr %60, i64 %106
  %108 = icmp eq i32 %57, 0
  br label %109

109:                                              ; preds = %178, %103
  %110 = phi i32 [ 0, %103 ], [ 1, %178 ]
  %111 = phi ptr [ %107, %103 ], [ %147, %178 ]
  %112 = phi ptr [ %107, %103 ], [ %180, %178 ]
  %113 = phi ptr [ %104, %103 ], [ %179, %178 ]
  %114 = phi ptr [ %104, %103 ], [ %143, %178 ]
  %115 = icmp ugt ptr %113, %112
  br i1 %115, label %140, label %116, !prof !63

116:                                              ; preds = %109, %135
  %117 = phi ptr [ %137, %135 ], [ %114, %109 ]
  %118 = phi ptr [ %138, %135 ], [ %113, %109 ]
  %119 = phi i32 [ %136, %135 ], [ %110, %109 ]
  %120 = tail call i32 %3(ptr noundef %118, ptr noundef %60) #3
  %121 = icmp slt i32 %120, 1
  br i1 %121, label %122, label %140, !prof !64

122:                                              ; preds = %116
  %123 = icmp eq i32 %120, 0
  br i1 %123, label %124, label %135, !prof !65

124:                                              ; preds = %122
  br i1 %93, label %125, label %128, !prof !66

125:                                              ; preds = %124
  %126 = load i64, ptr %117, align 8, !tbaa !47
  %127 = load i64, ptr %118, align 8, !tbaa !47
  store i64 %127, ptr %117, align 8, !tbaa !47
  store i64 %126, ptr %118, align 8, !tbaa !47
  br label %133

128:                                              ; preds = %124
  br i1 %108, label %129, label %132, !prof !67

129:                                              ; preds = %128
  %130 = load i32, ptr %117, align 4, !tbaa !52
  %131 = load i32, ptr %118, align 4, !tbaa !52
  store i32 %131, ptr %117, align 4, !tbaa !52
  store i32 %130, ptr %118, align 4, !tbaa !52
  br label %133

132:                                              ; preds = %128
  tail call fastcc void @swapfunc(ptr noundef %117, ptr noundef %118, i32 noundef %20, i32 noundef %58, i32 noundef %57) #4
  br label %133

133:                                              ; preds = %129, %132, %125
  %134 = getelementptr inbounds i8, ptr %117, i64 %2
  br label %135

135:                                              ; preds = %133, %122
  %136 = phi i32 [ 1, %133 ], [ %119, %122 ]
  %137 = phi ptr [ %134, %133 ], [ %117, %122 ]
  %138 = getelementptr inbounds i8, ptr %118, i64 %2
  %139 = icmp ugt ptr %138, %112
  br i1 %139, label %140, label %116, !prof !68, !llvm.loop !69

140:                                              ; preds = %116, %135, %109
  %141 = phi i32 [ %110, %109 ], [ %136, %135 ], [ %119, %116 ]
  %142 = phi ptr [ %113, %109 ], [ %138, %135 ], [ %118, %116 ]
  %143 = phi ptr [ %114, %109 ], [ %137, %135 ], [ %117, %116 ]
  %144 = icmp ugt ptr %142, %112
  br i1 %144, label %181, label %145, !prof !70

145:                                              ; preds = %140, %164
  %146 = phi ptr [ %167, %164 ], [ %112, %140 ]
  %147 = phi ptr [ %166, %164 ], [ %111, %140 ]
  %148 = phi i32 [ %165, %164 ], [ %141, %140 ]
  %149 = tail call i32 %3(ptr noundef %146, ptr noundef %60) #3
  %150 = icmp sgt i32 %149, -1
  br i1 %150, label %151, label %169, !prof !71

151:                                              ; preds = %145
  %152 = icmp eq i32 %149, 0
  br i1 %152, label %153, label %164, !prof !72

153:                                              ; preds = %151
  br i1 %93, label %154, label %157, !prof !73

154:                                              ; preds = %153
  %155 = load i64, ptr %146, align 8, !tbaa !47
  %156 = load i64, ptr %147, align 8, !tbaa !47
  store i64 %156, ptr %146, align 8, !tbaa !47
  store i64 %155, ptr %147, align 8, !tbaa !47
  br label %162

157:                                              ; preds = %153
  br i1 %108, label %158, label %161, !prof !74

158:                                              ; preds = %157
  %159 = load i32, ptr %146, align 4, !tbaa !52
  %160 = load i32, ptr %147, align 4, !tbaa !52
  store i32 %160, ptr %146, align 4, !tbaa !52
  store i32 %159, ptr %147, align 4, !tbaa !52
  br label %162

161:                                              ; preds = %157
  tail call fastcc void @swapfunc(ptr noundef %146, ptr noundef %147, i32 noundef %20, i32 noundef %58, i32 noundef %57) #4
  br label %162

162:                                              ; preds = %158, %161, %154
  %163 = getelementptr inbounds i8, ptr %147, i64 %5
  br label %164

164:                                              ; preds = %162, %151
  %165 = phi i32 [ 1, %162 ], [ %148, %151 ]
  %166 = phi ptr [ %163, %162 ], [ %147, %151 ]
  %167 = getelementptr inbounds i8, ptr %146, i64 %5
  %168 = icmp ugt ptr %142, %167
  br i1 %168, label %181, label %145, !prof !75, !llvm.loop !76

169:                                              ; preds = %145
  br i1 %93, label %170, label %173, !prof !77

170:                                              ; preds = %169
  %171 = load i64, ptr %142, align 8, !tbaa !47
  %172 = load i64, ptr %146, align 8, !tbaa !47
  store i64 %172, ptr %142, align 8, !tbaa !47
  store i64 %171, ptr %146, align 8, !tbaa !47
  br label %178

173:                                              ; preds = %169
  br i1 %108, label %174, label %177, !prof !78

174:                                              ; preds = %173
  %175 = load i32, ptr %142, align 4, !tbaa !52
  %176 = load i32, ptr %146, align 4, !tbaa !52
  store i32 %176, ptr %142, align 4, !tbaa !52
  store i32 %175, ptr %146, align 4, !tbaa !52
  br label %178

177:                                              ; preds = %173
  tail call fastcc void @swapfunc(ptr noundef %142, ptr noundef %146, i32 noundef %20, i32 noundef %58, i32 noundef %57) #4
  br label %178

178:                                              ; preds = %174, %177, %170
  %179 = getelementptr inbounds i8, ptr %142, i64 %2
  %180 = getelementptr inbounds i8, ptr %146, i64 %5
  br label %109

181:                                              ; preds = %140, %164
  %182 = phi i32 [ %165, %164 ], [ %141, %140 ]
  %183 = phi ptr [ %166, %164 ], [ %111, %140 ]
  %184 = phi ptr [ %167, %164 ], [ %112, %140 ]
  %185 = icmp eq i32 %182, 0
  %186 = mul i64 %61, %2
  %187 = getelementptr inbounds i8, ptr %60, i64 %186
  br i1 %185, label %188, label %212, !prof !79

188:                                              ; preds = %181
  %189 = icmp sgt i64 %186, %2
  br i1 %189, label %190, label %255, !prof !80

190:                                              ; preds = %188, %209
  %191 = phi ptr [ %210, %209 ], [ %104, %188 ]
  %192 = icmp ugt ptr %191, %60
  br i1 %192, label %193, label %209, !prof !81

193:                                              ; preds = %190, %207
  %194 = phi ptr [ %195, %207 ], [ %191, %190 ]
  %195 = getelementptr inbounds i8, ptr %194, i64 %5
  %196 = tail call i32 %3(ptr noundef nonnull %195, ptr noundef nonnull %194) #3
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %209, !prof !82

198:                                              ; preds = %193
  br i1 %93, label %199, label %202, !prof !83

199:                                              ; preds = %198
  %200 = load i64, ptr %194, align 8, !tbaa !47
  %201 = load i64, ptr %195, align 8, !tbaa !47
  store i64 %201, ptr %194, align 8, !tbaa !47
  store i64 %200, ptr %195, align 8, !tbaa !47
  br label %207

202:                                              ; preds = %198
  br i1 %108, label %203, label %206, !prof !84

203:                                              ; preds = %202
  %204 = load i32, ptr %194, align 4, !tbaa !52
  %205 = load i32, ptr %195, align 4, !tbaa !52
  store i32 %205, ptr %194, align 4, !tbaa !52
  store i32 %204, ptr %195, align 4, !tbaa !52
  br label %207

206:                                              ; preds = %202
  tail call fastcc void @swapfunc(ptr noundef nonnull %194, ptr noundef nonnull %195, i32 noundef %20, i32 noundef %58, i32 noundef %57) #4
  br label %207

207:                                              ; preds = %199, %206, %203
  %208 = icmp ugt ptr %195, %60
  br i1 %208, label %193, label %209, !prof !85, !llvm.loop !86

209:                                              ; preds = %207, %193, %190
  %210 = getelementptr inbounds i8, ptr %191, i64 %2
  %211 = icmp ult ptr %210, %187
  br i1 %211, label %190, label %255, !prof !87, !llvm.loop !88

212:                                              ; preds = %181
  %213 = ptrtoint ptr %143 to i64
  %214 = sub i64 %213, %59
  %215 = ptrtoint ptr %142 to i64
  %216 = sub i64 %215, %213
  %217 = tail call i64 @llvm.smin.i64(i64 %214, i64 %216)
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %223, label %219, !prof !89

219:                                              ; preds = %212
  %220 = sub i64 0, %217
  %221 = getelementptr inbounds i8, ptr %142, i64 %220
  %222 = trunc i64 %217 to i32
  tail call fastcc void @swapfunc(ptr noundef %60, ptr noundef nonnull %221, i32 noundef %222, i32 noundef %58, i32 noundef %57) #4
  br label %223

223:                                              ; preds = %219, %212
  %224 = ptrtoint ptr %183 to i64
  %225 = ptrtoint ptr %184 to i64
  %226 = sub i64 %224, %225
  %227 = ptrtoint ptr %187 to i64
  %228 = add i64 %224, %2
  %229 = sub i64 %227, %228
  %230 = tail call i64 @llvm.smin.i64(i64 %226, i64 %229)
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %236, label %232, !prof !90

232:                                              ; preds = %223
  %233 = sub i64 0, %230
  %234 = getelementptr inbounds i8, ptr %187, i64 %233
  %235 = trunc i64 %230 to i32
  tail call fastcc void @swapfunc(ptr noundef nonnull %142, ptr noundef nonnull %234, i32 noundef %235, i32 noundef %58, i32 noundef %57) #4
  br label %236

236:                                              ; preds = %232, %223
  %237 = icmp ugt i64 %216, %2
  br i1 %237, label %238, label %240, !prof !91

238:                                              ; preds = %236
  %239 = udiv i64 %216, %2
  tail call void @spec_qsort(ptr noundef %60, i64 noundef %239, i64 noundef %2, ptr noundef %3) #4
  br label %240

240:                                              ; preds = %238, %236
  %241 = icmp ugt i64 %226, %2
  br i1 %241, label %242, label %255, !prof !92

242:                                              ; preds = %240
  %243 = sub i64 0, %226
  %244 = getelementptr inbounds i8, ptr %187, i64 %243
  %245 = udiv i64 %226, %2
  %246 = ptrtoint ptr %244 to i64
  %247 = or i64 %246, %2
  %248 = and i64 %247, 7
  %249 = icmp eq i64 %248, 0
  %250 = select i1 %249, i32 %7, i32 2, !prof !40
  %251 = and i64 %247, 3
  %252 = icmp eq i64 %251, 0
  %253 = select i1 %252, i32 %9, i32 2, !prof !41
  %254 = icmp ult i64 %245, 7
  br i1 %254, label %21, label %56, !prof !93

255:                                              ; preds = %240, %209, %53, %188, %21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @swapfunc(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 !prof !94 !PGOFuncName !95 {
  %6 = icmp slt i32 %3, 2
  br i1 %6, label %7, label %20, !prof !96

7:                                                ; preds = %5
  %8 = sext i32 %2 to i64
  %9 = lshr i64 %8, 3
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %1, %7 ], [ %17, %10 ]
  %12 = phi ptr [ %0, %7 ], [ %16, %10 ]
  %13 = phi i64 [ %9, %7 ], [ %18, %10 ]
  %14 = load i64, ptr %12, align 8, !tbaa !47
  %15 = load i64, ptr %11, align 8, !tbaa !47
  %16 = getelementptr inbounds i64, ptr %12, i64 1
  store i64 %15, ptr %12, align 8, !tbaa !47
  %17 = getelementptr inbounds i64, ptr %11, i64 1
  store i64 %14, ptr %11, align 8, !tbaa !47
  %18 = add nsw i64 %13, -1
  %19 = icmp ugt i64 %13, 1
  br i1 %19, label %10, label %45, !prof !97, !llvm.loop !98

20:                                               ; preds = %5
  %21 = icmp slt i32 %4, 2
  %22 = sext i32 %2 to i64
  br i1 %21, label %23, label %35, !prof !99

23:                                               ; preds = %20
  %24 = lshr i64 %22, 2
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ %24, %23 ], [ %33, %25 ]
  %27 = phi ptr [ %0, %23 ], [ %31, %25 ]
  %28 = phi ptr [ %1, %23 ], [ %32, %25 ]
  %29 = load i32, ptr %27, align 4, !tbaa !52
  %30 = load i32, ptr %28, align 4, !tbaa !52
  %31 = getelementptr inbounds i32, ptr %27, i64 1
  store i32 %30, ptr %27, align 4, !tbaa !52
  %32 = getelementptr inbounds i32, ptr %28, i64 1
  store i32 %29, ptr %28, align 4, !tbaa !52
  %33 = add nsw i64 %26, -1
  %34 = icmp ugt i64 %26, 1
  br i1 %34, label %25, label %45, !prof !100, !llvm.loop !101

35:                                               ; preds = %20, %35
  %36 = phi i64 [ %43, %35 ], [ %22, %20 ]
  %37 = phi ptr [ %41, %35 ], [ %0, %20 ]
  %38 = phi ptr [ %42, %35 ], [ %1, %20 ]
  %39 = load i8, ptr %37, align 1, !tbaa !102
  %40 = load i8, ptr %38, align 1, !tbaa !102
  %41 = getelementptr inbounds i8, ptr %37, i64 1
  store i8 %40, ptr %37, align 1, !tbaa !102
  %42 = getelementptr inbounds i8, ptr %38, i64 1
  store i8 %39, ptr %38, align 1, !tbaa !102
  %43 = add nsw i64 %36, -1
  %44 = icmp sgt i64 %36, 1
  br i1 %44, label %35, label %45, !llvm.loop !103

45:                                               ; preds = %35, %25, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @med3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !104 !PGOFuncName !105 {
  %5 = tail call i32 %3(ptr noundef %0, ptr noundef %1) #3
  %6 = icmp slt i32 %5, 0
  %7 = tail call i32 %3(ptr noundef %1, ptr noundef %2) #3
  br i1 %6, label %8, label %14, !prof !106

8:                                                ; preds = %4
  %9 = icmp slt i32 %7, 0
  br i1 %9, label %20, label %10, !prof !107

10:                                               ; preds = %8
  %11 = tail call i32 %3(ptr noundef %0, ptr noundef %2) #3
  %12 = icmp slt i32 %11, 0
  %13 = select i1 %12, ptr %2, ptr %0, !prof !108
  br label %20

14:                                               ; preds = %4
  %15 = icmp sgt i32 %7, 0
  br i1 %15, label %20, label %16, !prof !109

16:                                               ; preds = %14
  %17 = tail call i32 %3(ptr noundef %0, ptr noundef %2) #3
  %18 = icmp slt i32 %17, 0
  %19 = select i1 %18, ptr %0, ptr %2, !prof !110
  br label %20

20:                                               ; preds = %14, %8, %16, %10
  %21 = phi ptr [ %13, %10 ], [ %19, %16 ], [ %1, %8 ], [ %1, %14 ]
  ret ptr %21
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!38}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @spec_qsort, ptr @swapfunc, i64 309873}
!36 = !{ptr @spec_qsort, ptr @med3, i64 2341296}
!37 = !{ptr @spec_qsort, ptr @spec_qsort, i64 292221}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 3142331}
!40 = !{!"branch_weights", i32 -1800033205, i32 263155902}
!41 = !{!"branch_weights", i32 -1600592792, i32 133006717}
!42 = !{!"branch_weights", i32 1996426, i32 703327}
!43 = !{!"branch_weights", i32 1366862, i32 1332891}
!44 = !{!"branch_weights", i32 636095, i32 1}
!45 = !{!"branch_weights", i32 1257819, i32 1366862}
!46 = !{!"branch_weights", i32 1024604, i32 233216}
!47 = !{!48, !48, i64 0}
!48 = !{!"long", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!"branch_weights", i32 233216, i32 1}
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !49, i64 0}
!54 = !{!"branch_weights", i32 1352490, i32 636095}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"branch_weights", i32 0, i32 1366862}
!58 = distinct !{!58, !56}
!59 = !{!"branch_weights", i32 37546, i32 665782}
!60 = !{!"branch_weights", i32 448587, i32 217196}
!61 = !{!"branch_weights", i32 607393, i32 95935}
!62 = !{!"branch_weights", i32 95857, i32 79}
!63 = !{!"branch_weights", i32 1, i32 122156}
!64 = !{!"branch_weights", i32 14742919, i32 3781123}
!65 = !{!"branch_weights", i32 10, i32 14742910}
!66 = !{!"branch_weights", i32 1, i32 10}
!67 = !{!"branch_weights", i32 10, i32 1}
!68 = !{!"branch_weights", i32 122156, i32 18279729}
!69 = distinct !{!69, !56}
!70 = !{!"branch_weights", i32 1, i32 703326}
!71 = !{!"branch_weights", i32 14813433, i32 3781123}
!72 = !{!"branch_weights", i32 2, i32 14813432}
!73 = !{!"branch_weights", i32 1, i32 2}
!74 = !{!"branch_weights", i32 2, i32 1}
!75 = !{!"branch_weights", i32 703326, i32 17187903}
!76 = distinct !{!76, !56}
!77 = !{!"branch_weights", i32 1546273, i32 1531525}
!78 = !{!"branch_weights", i32 1531525, i32 1}
!79 = !{!"branch_weights", i32 437567, i32 265761}
!80 = !{!"branch_weights", i32 437566, i32 1}
!81 = !{!"branch_weights", i32 497451, i32 1}
!82 = !{!"branch_weights", i32 20439227, i32 18817960}
!83 = !{!"branch_weights", i32 19428506, i32 1010722}
!84 = !{!"branch_weights", i32 1010332, i32 391}
!85 = !{!"branch_weights", i32 38262284, i32 497451}
!86 = distinct !{!86, !56}
!87 = !{!"branch_weights", i32 18380394, i32 437566}
!88 = distinct !{!88, !56}
!89 = !{!"branch_weights", i32 2, i32 265760}
!90 = !{!"branch_weights", i32 265760, i32 2}
!91 = !{!"branch_weights", i32 251065, i32 14697}
!92 = !{!"branch_weights", i32 260748, i32 5014}
!93 = !{!"branch_weights", i32 703327, i32 0}
!94 = !{!"function_entry_count", i64 266228}
!95 = !{!"spec_qsort.c:swapfunc"}
!96 = !{!"branch_weights", i32 180363, i32 85867}
!97 = !{!"branch_weights", i32 937, i32 180363}
!98 = distinct !{!98, !56}
!99 = !{!"branch_weights", i32 85867, i32 1}
!100 = !{!"branch_weights", i32 1, i32 85867}
!101 = distinct !{!101, !56}
!102 = !{!49, !49, i64 0}
!103 = distinct !{!103, !56}
!104 = !{!"function_entry_count", i64 2011539}
!105 = !{!"spec_qsort.c:med3"}
!106 = !{!"branch_weights", i32 1436176, i32 575365}
!107 = !{!"branch_weights", i32 1313515, i32 698026}
!108 = !{!"branch_weights", i32 65035, i32 1946506}
!109 = !{!"branch_weights", i32 58820, i32 1952721}
!110 = !{!"branch_weights", i32 59803, i32 1951738}
